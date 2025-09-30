import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthStorageService {
  AuthStorageService._();

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
}
