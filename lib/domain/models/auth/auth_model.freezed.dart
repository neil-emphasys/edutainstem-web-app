// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

@JsonKey(includeFromJson: false, includeToJson: false) String? get docId; String get id; String get firstName; String get lastName; String get email; bool get isAdmin; String get role;@TimestampConverter() DateTime get createdAt;@JsonKey(includeFromJson: false, includeToJson: false) String? get password; LanguageEnum get preferredLanguage; bool get enabled;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.role, role) || other.role == role)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.password, password) || other.password == password)&&(identical(other.preferredLanguage, preferredLanguage) || other.preferredLanguage == preferredLanguage)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,docId,id,firstName,lastName,email,isAdmin,role,createdAt,password,preferredLanguage,enabled);

@override
String toString() {
  return 'UserModel(docId: $docId, id: $id, firstName: $firstName, lastName: $lastName, email: $email, isAdmin: $isAdmin, role: $role, createdAt: $createdAt, password: $password, preferredLanguage: $preferredLanguage, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeFromJson: false, includeToJson: false) String? docId, String id, String firstName, String lastName, String email, bool isAdmin, String role,@TimestampConverter() DateTime createdAt,@JsonKey(includeFromJson: false, includeToJson: false) String? password, LanguageEnum preferredLanguage, bool enabled
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? docId = freezed,Object? id = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? isAdmin = null,Object? role = null,Object? createdAt = null,Object? password = freezed,Object? preferredLanguage = null,Object? enabled = null,}) {
  return _then(_self.copyWith(
docId: freezed == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,preferredLanguage: null == preferredLanguage ? _self.preferredLanguage : preferredLanguage // ignore: cast_nullable_to_non_nullable
as LanguageEnum,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeFromJson: false, includeToJson: false)  String? docId,  String id,  String firstName,  String lastName,  String email,  bool isAdmin,  String role, @TimestampConverter()  DateTime createdAt, @JsonKey(includeFromJson: false, includeToJson: false)  String? password,  LanguageEnum preferredLanguage,  bool enabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.docId,_that.id,_that.firstName,_that.lastName,_that.email,_that.isAdmin,_that.role,_that.createdAt,_that.password,_that.preferredLanguage,_that.enabled);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeFromJson: false, includeToJson: false)  String? docId,  String id,  String firstName,  String lastName,  String email,  bool isAdmin,  String role, @TimestampConverter()  DateTime createdAt, @JsonKey(includeFromJson: false, includeToJson: false)  String? password,  LanguageEnum preferredLanguage,  bool enabled)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.docId,_that.id,_that.firstName,_that.lastName,_that.email,_that.isAdmin,_that.role,_that.createdAt,_that.password,_that.preferredLanguage,_that.enabled);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeFromJson: false, includeToJson: false)  String? docId,  String id,  String firstName,  String lastName,  String email,  bool isAdmin,  String role, @TimestampConverter()  DateTime createdAt, @JsonKey(includeFromJson: false, includeToJson: false)  String? password,  LanguageEnum preferredLanguage,  bool enabled)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.docId,_that.id,_that.firstName,_that.lastName,_that.email,_that.isAdmin,_that.role,_that.createdAt,_that.password,_that.preferredLanguage,_that.enabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({@JsonKey(includeFromJson: false, includeToJson: false) this.docId, required this.id, required this.firstName, required this.lastName, required this.email, required this.isAdmin, required this.role, @TimestampConverter() required this.createdAt, @JsonKey(includeFromJson: false, includeToJson: false) this.password, required this.preferredLanguage, required this.enabled});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override@JsonKey(includeFromJson: false, includeToJson: false) final  String? docId;
@override final  String id;
@override final  String firstName;
@override final  String lastName;
@override final  String email;
@override final  bool isAdmin;
@override final  String role;
@override@TimestampConverter() final  DateTime createdAt;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  String? password;
@override final  LanguageEnum preferredLanguage;
@override final  bool enabled;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.role, role) || other.role == role)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.password, password) || other.password == password)&&(identical(other.preferredLanguage, preferredLanguage) || other.preferredLanguage == preferredLanguage)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,docId,id,firstName,lastName,email,isAdmin,role,createdAt,password,preferredLanguage,enabled);

@override
String toString() {
  return 'UserModel(docId: $docId, id: $id, firstName: $firstName, lastName: $lastName, email: $email, isAdmin: $isAdmin, role: $role, createdAt: $createdAt, password: $password, preferredLanguage: $preferredLanguage, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeFromJson: false, includeToJson: false) String? docId, String id, String firstName, String lastName, String email, bool isAdmin, String role,@TimestampConverter() DateTime createdAt,@JsonKey(includeFromJson: false, includeToJson: false) String? password, LanguageEnum preferredLanguage, bool enabled
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? docId = freezed,Object? id = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? isAdmin = null,Object? role = null,Object? createdAt = null,Object? password = freezed,Object? preferredLanguage = null,Object? enabled = null,}) {
  return _then(_UserModel(
docId: freezed == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,preferredLanguage: null == preferredLanguage ? _self.preferredLanguage : preferredLanguage // ignore: cast_nullable_to_non_nullable
as LanguageEnum,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
