// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthModel _$AuthModelFromJson(Map<String, dynamic> json) => _AuthModel(
  fullName: json['fullName'] as String,
  email: json['email'] as String,
  password: json['password'] as String,
  confirmPassword: json['confirmPassword'] as String,
  language: json['language'] as String,
);

Map<String, dynamic> _$AuthModelToJson(_AuthModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'language': instance.language,
    };

_AuthUserModel _$AuthUserModelFromJson(Map<String, dynamic> json) =>
    _AuthUserModel(
      email: json['email'] as String,
      name: json['name'] as String,
      createdAt: json['createdAt'] as String,
      role: json['role'] as String,
      preferredLanguage: json['preferredLanguage'] as String,
    );

Map<String, dynamic> _$AuthUserModelToJson(_AuthUserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'createdAt': instance.createdAt,
      'role': instance.role,
      'preferredLanguage': instance.preferredLanguage,
    };
