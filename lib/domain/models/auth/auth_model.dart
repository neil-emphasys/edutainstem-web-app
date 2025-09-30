import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

DateTime? _fromTimestamp(dynamic value) {
  if (value == null) return null;
  if (value is Timestamp) return value.toDate();
  if (value is String) return DateTime.tryParse(value);
  return null;
}

Timestamp _toTimestamp(DateTime date) => Timestamp.fromDate(date);

@freezed
abstract class AuthModel with _$AuthModel {
  @JsonSerializable(explicitToJson: true)
  const factory AuthModel({
    required String fullName,
    required String email,
    required String password,
    required String confirmPassword,
    required String language,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  factory AuthModel.empty() {
    return const AuthModel(
      fullName: '',
      email: '',
      password: '',
      confirmPassword: '',
      language: '',
    );
  }
}

@freezed
abstract class AuthUserModel with _$AuthUserModel {
  @JsonSerializable(explicitToJson: true)
  const factory AuthUserModel({
    required String email,
    required String name,
    required String createdAt,
    required String role,
    required String preferredLanguage,
  }) = _AuthUserModel;

  factory AuthUserModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserModelFromJson(json);
}
