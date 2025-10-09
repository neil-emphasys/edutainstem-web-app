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

  // 👇 Needed to define custom methods/getters with bodies
  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  // ---- Custom helpers that DO include docId ------------------------------

  // READ: json + docId, with optional cache coercion
  factory UserModel.fromJsonWithDocId(
    Map<String, dynamic> json, {
    bool forCache = false, // when true, accept ISO strings comfortably
  }) {
    final fixed = Map<String, dynamic>.from(json);

    // Normalize createdAt so the @TimestampConverter can parse it:
    final v = fixed['createdAt'];
    if (forCache) {
      // If cache stored ISO string, leave it. If Timestamp/DateTime, make ISO.
      if (v is Timestamp) {
        fixed['createdAt'] = v.toDate().toUtc().toIso8601String();
      }
      if (v is DateTime) fixed['createdAt'] = v.toUtc().toIso8601String();
    }
    // If not cache, let converter handle Timestamp/DateTime/String naturally.

    return UserModel.fromJson(fixed).copyWith(docId: fixed['docId']);
  }

  /// Firestore-friendly: build directly from a DocumentSnapshot
  factory UserModel.fromDoc(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data() ?? <String, dynamic>{};
    final base = _$UserModelFromJson(data);
    return base.copyWith(docId: doc.id);
  }

  /// If you need to serialize AND include docId (e.g., caching):
  /// (Avoid writing docId back into Firestore unless you really want it stored.)
  // WRITE: include docId, with optional cache coercion
  Map<String, dynamic> toJsonIncludingDocId({bool forCache = false}) {
    final map =
        toJson(); // uses your @TimestampConverter (Timestamp for Firestore)

    if (forCache) {
      // Override createdAt to JSON-safe ISO string for SharedPreferences
      map['createdAt'] = createdAt.toUtc().toIso8601String();
    }

    if (docId != null) map['docId'] = docId;
    return map;
  }

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
