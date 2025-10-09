import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthStorageService {
  AuthStorageService._();
  // static final AuthStorageService _instance = AuthStorageService._();
  // factory AuthStorageService() => _instance;

  static const String _keyUserId = 'user_id';
  static const String _keyUserEmail = 'user_email';
  static const String _keyUserDisplayName = 'user_display_name';
  static const String _keyAuthToken =
      'auth_token'; // Prefer secure storage in prod
  static const String _keyIsLoggedIn = 'is_logged_in';

  /// Save Firebase UserCredential data.
  /// Set [saveIdToken] to true only if you must persist it here (use secure storage ideally).
  static Future<void> saveUser(
    UserCredential userCredential, {
    bool saveIdToken = false,
  }) async {
    final user = userCredential.user;
    if (user == null) return;

    try {
      final prefs = await SharedPreferences.getInstance();

      await prefs.setString(_keyUserId, user.uid);
      await prefs.setString(_keyUserEmail, user.email ?? '');
      await prefs.setString(_keyUserDisplayName, user.displayName ?? '');

      if (saveIdToken) {
        // Force refresh if you want a fresh token: getIdToken(true)
        final token = await user.getIdToken();
        await prefs.setString(_keyAuthToken, token ?? '');
      }

      await prefs.setBool(_keyIsLoggedIn, true);
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      rethrow;
    }
  }

  /// Retrieve stored user data. Returns null if not logged in.
  static Future<Map<String, String>?> getUser() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final isLoggedIn = prefs.getBool(_keyIsLoggedIn) ?? false;
      if (!isLoggedIn) return null;

      final userId = prefs.getString(_keyUserId);
      if (userId == null || userId.isEmpty) return null;

      return {
        'userId': userId,
        'userEmail': prefs.getString(_keyUserEmail) ?? '',
        'userDisplayName': prefs.getString(_keyUserDisplayName) ?? '',
        'authToken': prefs.getString(_keyAuthToken) ?? '',
      };
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      rethrow;
    }
  }

  /// Check if a user is marked as signed in.
  static Future<bool> isSignedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyIsLoggedIn) ?? false;
    // Optionally also check FirebaseAuth.instance.currentUser != null
  }

  /// Sign out from Firebase and clear only our stored keys.
  static Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
    } finally {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_keyUserId);
      await prefs.remove(_keyUserEmail);
      await prefs.remove(_keyUserDisplayName);
      await prefs.remove(_keyAuthToken);
      await prefs.remove(_keyIsLoggedIn);
    }
  }

  /// (Optional) Refresh and store an updated ID token.
  /// Prefer secure storage for tokens in production.
  static Future<String?> refreshAndStoreIdToken() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return null;
    final token = await user.getIdToken(true);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyAuthToken, token ?? '');
    return token;
  }

  // ---- Generic Map helpers (JSON-encoded) -------------------------------

  /// Saves ANY JSON-encodable map under a namespaced key.
  /// Keys must be strings (JSON requirement). Values can be nested maps/lists.
  static Future<void> saveMap(
    String key,
    Map<String, dynamic> map, {
    bool pretty = false,
  }) async {
    assert(key.isNotEmpty, 'Key must not be empty.');
    try {
      final prefs = await SharedPreferences.getInstance();
      // final encoder = pretty ? const JsonEncoder.withIndent('  ') : jsonEncode;
      final jsonString = pretty
          ? const JsonEncoder.withIndent('  ').convert(map)
          : jsonEncode(map);
      await prefs.setString(_ns(key), jsonString);
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      rethrow;
    }
  }

  /// Reads a previously saved map. Returns null if nothing is stored.
  static Future<Map<String, dynamic>?> getMap(String key) async {
    assert(key.isNotEmpty, 'Key must not be empty.');
    try {
      final prefs = await SharedPreferences.getInstance();
      final jsonString = prefs.getString(_ns(key));
      if (jsonString == null || jsonString.isEmpty) return null;

      final decoded = jsonDecode(jsonString);
      if (decoded is Map<String, dynamic>) {
        return decoded;
      }

      // If the decoded type isn't a Map (e.g., list), try to coerce common cases.
      if (decoded is Map) {
        return Map<String, dynamic>.from(decoded);
      }

      // Not a map — return null or throw depending on your preference.
      return null;
    } catch (e, st) {
      return null;
    }
  }

  /// Removes a stored map by key.
  static Future<void> removeMap(String key) async {
    try {
      assert(key.isNotEmpty, 'Key must not be empty.');
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_ns(key));
    } catch (e) {}
  }

  /// Convenience for saving a list of maps (e.g., table rows, cached query).
  static Future<void> saveMapList(
    String key,
    List<Map<String, dynamic>> list,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final jsonString = jsonEncode(list);
      await prefs.setString(_ns(key), jsonString);
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      rethrow;
    }
  }

  /// Reads a list of maps saved by [saveMapList].
  static Future<List<Map<String, dynamic>>?> getMapList(String key) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final jsonString = prefs.getString(_ns(key));
      if (jsonString == null || jsonString.isEmpty) return null;

      final decoded = jsonDecode(jsonString);
      if (decoded is List) {
        return decoded
            .whereType<Map>() // ensure each entry is a Map
            .map<Map<String, dynamic>>((m) => Map<String, dynamic>.from(m))
            .toList();
      }
      return null;
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      rethrow;
    }
  }

  // ---- Internal ----------------------------------------------------------

  static String _ns(String key) => 'auth_storage:$key';
}
