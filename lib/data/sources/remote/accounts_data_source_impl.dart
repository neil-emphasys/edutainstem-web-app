import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edutainstem/core/constants/firebase_constants.dart';
import 'package:edutainstem/data/sources/remote/accounts_data_source.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
      debugPrint('ACCOUNTS: $accounts');

      return accounts;
    } catch (e, st) {
      debugPrint('E: $e');
      rethrow;
    }
  }
}
