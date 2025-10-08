import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edutainstem/core/enums/language_enum.dart';
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
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(includeFromJson: false, includeToJson: false) String? docId,
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    required bool isAdmin,
    required String role,
    @TimestampConverter() required DateTime createdAt,
    @JsonKey(includeFromJson: false, includeToJson: false) String? password,
    required LanguageEnum preferredLanguage,
    required bool enabled,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.initial() {
    return UserModel(
      id: '',
      firstName: '',
      lastName: '',
      email: '',
      isAdmin: false,
      createdAt: DateTime.now(),
      role: 'teacher',
      preferredLanguage: LanguageEnum.english,
      enabled: false,
    );
  }
}

class TimestampConverter implements JsonConverter<DateTime, Object?> {
  const TimestampConverter();

  @override
  DateTime fromJson(Object? json) {
    if (json == null) return DateTime.now();
    if (json is Timestamp) return json.toDate();
    if (json is DateTime) return json;
    if (json is String) return DateTime.parse(json);
    throw ArgumentError('Invalid type for createdAt: $json');
  }

  @override
  Object toJson(DateTime object) => Timestamp.fromDate(object);
}

extension UserModelHelper on UserModel {
  String get getFullName {
    return '$firstName $lastName';
  }
}
