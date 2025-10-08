// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  email: json['email'] as String,
  isAdmin: json['isAdmin'] as bool,
  role: json['role'] as String,
  createdAt: const TimestampConverter().fromJson(json['createdAt']),
  preferredLanguage: $enumDecode(
    _$LanguageEnumEnumMap,
    json['preferredLanguage'],
  ),
  enabled: json['enabled'] as bool,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'isAdmin': instance.isAdmin,
      'role': instance.role,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'preferredLanguage': _$LanguageEnumEnumMap[instance.preferredLanguage]!,
      'enabled': instance.enabled,
    };

const _$LanguageEnumEnumMap = {
  LanguageEnum.english: 'english',
  LanguageEnum.dutch: 'dutch',
  LanguageEnum.italian: 'italian',
  LanguageEnum.portuguese: 'portuguese',
  LanguageEnum.hungarian: 'hungarian',
  LanguageEnum.greek: 'greek',
};
