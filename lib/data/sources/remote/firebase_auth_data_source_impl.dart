import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edutainstem/core/constants/firebase_constants.dart';
import 'package:edutainstem/core/services/auth_storage_services.dart';
import 'package:edutainstem/data/sources/remote/firebase_auth_data_source.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthDataSourceImpl implements FirebaseAuthDataSource {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  final _db = FirebaseFirestore.instance;

  FirebaseAuthDataSourceImpl({
    required this.firebaseAuth,
    required this.googleSignIn,
  });

  @override
  Future<UserModel> signInWithCredentials() async {
    try {
      debugPrint('ZXCZXCZXCX');
      // --- Web: use Firebase Auth's popup flow (recommended) ---
      final provider = GoogleAuthProvider();
      final userCred = await FirebaseAuth.instance.signInWithPopup(provider);

      final user = userCred.user;
      if (user == null) throw (FirebaseConstants.users.userNotExist);

      final savedUser = await saveUserToDatabase(user: user);
      await AuthStorageService.saveUser(userCred);
      return savedUser;
    } on FirebaseAuthException catch (e, st) {
      debugPrint(
        'FirebaseAuthException in signInWithCredentials: ${e.code} ${e.message}',
      );
      // debugPrintStack(stackTrace: st);
      rethrow;
    } catch (e, st) {
      debugPrint('FirebaseAuthException in signInWithCredentials: $e');
      // debugPrintStack(stackTrace: st);
      rethrow;
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

      await saveUserToDatabase(user: user.user);

      await AuthStorageService.saveUser(user);

      return user;
    } catch (error) {}

    return null;
  }

  @override
  Future<UserModel> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      await FirebaseAuth.instance.signOut();

      final result = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final qs = await _db
          .collection(FirebaseConstants.users.name)
          .where(FirebaseConstants.users.id, isEqualTo: result.user?.uid)
          .where(FirebaseConstants.users.enabled, isEqualTo: true)
          .where(FirebaseConstants.users.role, isEqualTo: 'teacher')
          .limit(1)
          .get();

      // final roomAssessmentOpen = await _db
      //     .collection(FirebaseConstants.room.name)
      //     .where(FirebaseConstants.room.roomCode, isEqualTo: code.toUpperCase())
      //     .where(
      //       Filter.or(
      //         Filter(FirebaseConstants.room.isOpen, isEqualTo: true),
      //         Filter(FirebaseConstants.room.isLessonOpen, isEqualTo: true),
      //       ),
      //     )
      //     .limit(1)
      //     .get();

      if (qs.docs.isEmpty) throw (FirebaseConstants.users.errorSigninNotExist);

      final doc = qs.docs.first;
      final user = UserModel.fromJson(Map<String, dynamic>.from(doc.data()));

      return user;
    } on FirebaseAuthException catch (e, st) {
      debugPrint(
        'FirebaseAuthException in signInWithCredentials: ${e.code} ${e.message}',
      );

      switch (e.code) {
        case 'invalid-credential':
          throw (FirebaseConstants.users.errorSigninNotExist);
      }

      // debugPrintStack(stackTrace: st);
      rethrow;
    } catch (e) {
      debugPrint('SIGN IN ERROR: $e');
      rethrow;
    }
  }

  @override
  Future<UserModel> signUpWithEmailAndPassword(UserModel data) async {
    try {
      if (data.password != null) {
        // final qs = await _db
        //     .collection(FirebaseConstants.users.name)
        //     .where(FirebaseConstants.users.email, isEqualTo: data.email)
        //     .limit(1)
        //     .get();

        // if (!qs.docs.isNotEmpty) throw (FirebaseConstants.users.emailExist);

        // final doc = qs.docs.first;
        // final user = UserModel.fromJson(Map<String, dynamic>.from(doc.data()));

        final result = await firebaseAuth.createUserWithEmailAndPassword(
          email: data.email,
          password: data.password!,
        );

        await result.user?.updateDisplayName(
          '${data.firstName} ${data.lastName}',
        );

        final user = await saveUserToDatabase(user: result.user, data: data);

        return user;
      }

      throw 'Empty Password';
    } /* on FirebaseException catch (e, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
      rethrow; // rethrow so caller can handle it if needed
    } */ catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
    await googleSignIn.signOut();
    await AuthStorageService.signOut();
  }

  /* Future<void> saveUserToDatabase(
    User? user, {
    String? preferredLanguage,
  }) async {
    if (user != null) {
      final db = FirebaseFirestore.instance;

      await db.collection('users').doc(user.uid).set({
        'id': user.uid,
        'email': user.email,
        'name': user.displayName ?? '',
        'createdAt': FieldValue.serverTimestamp(),
        'role': 'teacher',
        'preferredLanguage': preferredLanguage ?? 'en',
        'enabled': false,
      });
    }
  } */

  Future<UserModel> saveUserToDatabase({
    required User? user,
    UserModel? data,
  }) async {
    // final current = FirebaseAuth.instance.currentUser;
    if (user == null) {
      throw StateError('No authenticated user.');
    }
    final uid = user.uid;

    final ref = FirebaseFirestore.instance
        .collection(FirebaseConstants.users.name)
        .doc(uid);

    if (data == null) {
      data = UserModel.initial();
      data = data.copyWith(
        email: user.email ?? '',
        firstName: user.displayName ?? '',
      );
    }

    // Check if user instance is already existing on database
    final qs = await _db
        .collection(FirebaseConstants.users.name)
        .where(FirebaseConstants.users.id, isEqualTo: user.uid)
        .limit(1)
        .get();

    if (qs.docs.isNotEmpty) {
      final doc = qs.docs.first;
      final fetchedUser = UserModel.fromJson(
        Map<String, dynamic>.from(doc.data()),
      );

      return fetchedUser;
    }

    // Use server time for createdAt if you prefer
    final updatedData = data
        .copyWith(
          id: uid,
          createdAt: user.metadata.creationTime ?? DateTime.now(),
        ) // keep or set to DateTime.now()
        .toJson();

    // Write (merge keeps any existing fields)
    await ref.set({
      ...updatedData,
      // Optional: overwrite createdAt on first write
      'createdAt': FieldValue.serverTimestamp(),
    }, SetOptions(merge: true));

    // Read back & return with id attached (id is excluded in JSON by design)
    final snap = await ref.get();
    final saved = UserModel.fromJson(
      Map<String, dynamic>.from(snap.data() ?? {}),
    );
    return saved.copyWith(docId: snap.id);
  }

  @override
  Future<UserModel> getUserByUid(String uid) async {
    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection('users')
          .withConverter<UserModel>(
            fromFirestore: (snapshot, _) =>
                UserModel.fromJson(snapshot.data()!),
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
