import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edutainstem/core/constants/firebase_constants.dart';
import 'package:edutainstem/data/sources/remote/accounts_data_source.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AccountsDataSourceImpl implements AccountsDataSource {
  final _db = FirebaseFirestore.instance;

  @override
  Future<List<UserModel>> fetchAccounts() async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      final uid = user?.uid;

      if (uid == null) throw Exception('User not logged in');

      final snap = await _db
          .collection(FirebaseConstants.users.name)
          .where(FirebaseConstants.users.role, isEqualTo: 'teacher')
          .where(FirebaseConstants.users.id, isNotEqualTo: uid)
          .get();

      // Map each doc to RoomModel using your fromDoc factory.
      final accounts = snap.docs
          .map<UserModel>((doc) => UserModel.fromJson(doc.data()))
          .toList();

      return accounts;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> setUserEnabled({
    required String uid,
    required bool enabled,
  }) async {
    try {
      final qs = await FirebaseFirestore.instance
          .collection(FirebaseConstants.users.name)
          .where(FirebaseConstants.users.id, isEqualTo: uid)
          .limit(1)
          .get();

      if (qs.docs.isEmpty) {
        throw Exception('User not found for uid: $uid');
      }

      final docRef = qs.docs.first.reference;

      await docRef.set({
        FirebaseConstants.users.enabled: enabled,
        'enabledUpdatedAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));

      return enabled;
    } catch (e) {
      rethrow;
    }
  }
}
