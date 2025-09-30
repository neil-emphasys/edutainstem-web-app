import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edutainstem/core/services/auth_storage_services.dart';
import 'package:edutainstem/data/sources/remote/firebase_auth_data_source.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthDataSourceImpl implements FirebaseAuthDataSource {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  FirebaseAuthDataSourceImpl({
    required this.firebaseAuth,
    required this.googleSignIn,
  });

  @override
  Future<UserCredential?> signInWithCredentials() async {
    try {
      // --- Web: use Firebase Auth's popup flow (recommended) ---
      final provider = GoogleAuthProvider();
      final userCred = await FirebaseAuth.instance.signInWithPopup(provider);

      final user = userCred.user;
      if (user == null) return null;

      await saveUserToDatabase(user);
      await AuthStorageService.saveUser(userCred);
      return userCred;
    } on FirebaseAuthException catch (e, st) {
      debugPrint(
        'FirebaseAuthException in signInWithCredentials: ${e.code} ${e.message}',
      );
      debugPrintStack(stackTrace: st);
      return null;
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      return null;
    }
  }

  @override
  Future<UserCredential?> reSignInWithCredentials({
    required String accessToken,
    required String idToken,
  }) async {
    try {
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: accessToken,
        idToken: idToken,
      );

      // Once signed in, return the UserCredential
      final user = await FirebaseAuth.instance.signInWithCredential(credential);

      await saveUserToDatabase(user.user);

      await AuthStorageService.saveUser(user);

      return user;
    } catch (error) {}

    return null;
  }

  @override
  Future<User?> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final result = await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    await saveUserToDatabase(result.user);

    return result.user;
  }

  @override
  Future<User?> signUpWithEmailAndPassword(AuthModel data) async {
    final result = await firebaseAuth.createUserWithEmailAndPassword(
      email: data.email,
      password: data.password,
    );

    await result.user?.updateDisplayName(data.fullName);

    await saveUserToDatabase(result.user);

    return result.user;
    // return null;
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
    await googleSignIn.signOut();
    await AuthStorageService.signOut();
  }

  Future<void> saveUserToDatabase(User? user) async {
    if (user != null) {
      final db = FirebaseFirestore.instance;

      await db.collection('users').doc(user.uid).set({
        'id': user.uid,
        'email': user.email,
        'name': user.displayName ?? '',
        'createdAt': DateTime.now().toIso8601String(),
        'role': 'user',
        'preferredLanguage': 'en',
      });
    }
  }

  @override
  Future<AuthUserModel> getUserByUid(String uid) async {
    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection('users')
          .withConverter<AuthUserModel>(
            fromFirestore: (snapshot, _) =>
                AuthUserModel.fromJson(snapshot.data()!),
            toFirestore: (user, _) => user.toJson(),
          )
          .where('id', isEqualTo: uid) // Remove quotes around uid
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        debugPrint(
          'querySnapshot.docs.first.data(): ${querySnapshot.docs.first.data()}',
        );

        return querySnapshot.docs.first.data();
      } else {
        throw Exception('User not found');
      }
    } catch (error) {
      rethrow;
    }
  }
}
