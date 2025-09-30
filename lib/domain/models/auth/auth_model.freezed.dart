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
mixin _$AuthModel {

 String get fullName; String get email; String get password; String get confirmPassword; String get language;
/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthModelCopyWith<AuthModel> get copyWith => _$AuthModelCopyWithImpl<AuthModel>(this as AuthModel, _$identity);

  /// Serializes this AuthModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,email,password,confirmPassword,language);

@override
String toString() {
  return 'AuthModel(fullName: $fullName, email: $email, password: $password, confirmPassword: $confirmPassword, language: $language)';
}


}

/// @nodoc
abstract mixin class $AuthModelCopyWith<$Res>  {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) _then) = _$AuthModelCopyWithImpl;
@useResult
$Res call({
 String fullName, String email, String password, String confirmPassword, String language
});




}
/// @nodoc
class _$AuthModelCopyWithImpl<$Res>
    implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._self, this._then);

  final AuthModel _self;
  final $Res Function(AuthModel) _then;

/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,Object? email = null,Object? password = null,Object? confirmPassword = null,Object? language = null,}) {
  return _then(_self.copyWith(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthModel].
extension AuthModelPatterns on AuthModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fullName,  String email,  String password,  String confirmPassword,  String language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthModel() when $default != null:
return $default(_that.fullName,_that.email,_that.password,_that.confirmPassword,_that.language);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fullName,  String email,  String password,  String confirmPassword,  String language)  $default,) {final _that = this;
switch (_that) {
case _AuthModel():
return $default(_that.fullName,_that.email,_that.password,_that.confirmPassword,_that.language);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fullName,  String email,  String password,  String confirmPassword,  String language)?  $default,) {final _that = this;
switch (_that) {
case _AuthModel() when $default != null:
return $default(_that.fullName,_that.email,_that.password,_that.confirmPassword,_that.language);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _AuthModel implements AuthModel {
  const _AuthModel({required this.fullName, required this.email, required this.password, required this.confirmPassword, required this.language});
  factory _AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);

@override final  String fullName;
@override final  String email;
@override final  String password;
@override final  String confirmPassword;
@override final  String language;

/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthModelCopyWith<_AuthModel> get copyWith => __$AuthModelCopyWithImpl<_AuthModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,email,password,confirmPassword,language);

@override
String toString() {
  return 'AuthModel(fullName: $fullName, email: $email, password: $password, confirmPassword: $confirmPassword, language: $language)';
}


}

/// @nodoc
abstract mixin class _$AuthModelCopyWith<$Res> implements $AuthModelCopyWith<$Res> {
  factory _$AuthModelCopyWith(_AuthModel value, $Res Function(_AuthModel) _then) = __$AuthModelCopyWithImpl;
@override @useResult
$Res call({
 String fullName, String email, String password, String confirmPassword, String language
});




}
/// @nodoc
class __$AuthModelCopyWithImpl<$Res>
    implements _$AuthModelCopyWith<$Res> {
  __$AuthModelCopyWithImpl(this._self, this._then);

  final _AuthModel _self;
  final $Res Function(_AuthModel) _then;

/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? email = null,Object? password = null,Object? confirmPassword = null,Object? language = null,}) {
  return _then(_AuthModel(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AuthUserModel {

 String get email; String get name; String get createdAt; String get role; String get preferredLanguage;
/// Create a copy of AuthUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthUserModelCopyWith<AuthUserModel> get copyWith => _$AuthUserModelCopyWithImpl<AuthUserModel>(this as AuthUserModel, _$identity);

  /// Serializes this AuthUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthUserModel&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.role, role) || other.role == role)&&(identical(other.preferredLanguage, preferredLanguage) || other.preferredLanguage == preferredLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,name,createdAt,role,preferredLanguage);

@override
String toString() {
  return 'AuthUserModel(email: $email, name: $name, createdAt: $createdAt, role: $role, preferredLanguage: $preferredLanguage)';
}


}

/// @nodoc
abstract mixin class $AuthUserModelCopyWith<$Res>  {
  factory $AuthUserModelCopyWith(AuthUserModel value, $Res Function(AuthUserModel) _then) = _$AuthUserModelCopyWithImpl;
@useResult
$Res call({
 String email, String name, String createdAt, String role, String preferredLanguage
});




}
/// @nodoc
class _$AuthUserModelCopyWithImpl<$Res>
    implements $AuthUserModelCopyWith<$Res> {
  _$AuthUserModelCopyWithImpl(this._self, this._then);

  final AuthUserModel _self;
  final $Res Function(AuthUserModel) _then;

/// Create a copy of AuthUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? name = null,Object? createdAt = null,Object? role = null,Object? preferredLanguage = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,preferredLanguage: null == preferredLanguage ? _self.preferredLanguage : preferredLanguage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthUserModel].
extension AuthUserModelPatterns on AuthUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthUserModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String name,  String createdAt,  String role,  String preferredLanguage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthUserModel() when $default != null:
return $default(_that.email,_that.name,_that.createdAt,_that.role,_that.preferredLanguage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String name,  String createdAt,  String role,  String preferredLanguage)  $default,) {final _that = this;
switch (_that) {
case _AuthUserModel():
return $default(_that.email,_that.name,_that.createdAt,_that.role,_that.preferredLanguage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String name,  String createdAt,  String role,  String preferredLanguage)?  $default,) {final _that = this;
switch (_that) {
case _AuthUserModel() when $default != null:
return $default(_that.email,_that.name,_that.createdAt,_that.role,_that.preferredLanguage);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _AuthUserModel implements AuthUserModel {
  const _AuthUserModel({required this.email, required this.name, required this.createdAt, required this.role, required this.preferredLanguage});
  factory _AuthUserModel.fromJson(Map<String, dynamic> json) => _$AuthUserModelFromJson(json);

@override final  String email;
@override final  String name;
@override final  String createdAt;
@override final  String role;
@override final  String preferredLanguage;

/// Create a copy of AuthUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthUserModelCopyWith<_AuthUserModel> get copyWith => __$AuthUserModelCopyWithImpl<_AuthUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthUserModel&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.role, role) || other.role == role)&&(identical(other.preferredLanguage, preferredLanguage) || other.preferredLanguage == preferredLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,name,createdAt,role,preferredLanguage);

@override
String toString() {
  return 'AuthUserModel(email: $email, name: $name, createdAt: $createdAt, role: $role, preferredLanguage: $preferredLanguage)';
}


}

/// @nodoc
abstract mixin class _$AuthUserModelCopyWith<$Res> implements $AuthUserModelCopyWith<$Res> {
  factory _$AuthUserModelCopyWith(_AuthUserModel value, $Res Function(_AuthUserModel) _then) = __$AuthUserModelCopyWithImpl;
@override @useResult
$Res call({
 String email, String name, String createdAt, String role, String preferredLanguage
});




}
/// @nodoc
class __$AuthUserModelCopyWithImpl<$Res>
    implements _$AuthUserModelCopyWith<$Res> {
  __$AuthUserModelCopyWithImpl(this._self, this._then);

  final _AuthUserModel _self;
  final $Res Function(_AuthUserModel) _then;

/// Create a copy of AuthUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? name = null,Object? createdAt = null,Object? role = null,Object? preferredLanguage = null,}) {
  return _then(_AuthUserModel(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,preferredLanguage: null == preferredLanguage ? _self.preferredLanguage : preferredLanguage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
