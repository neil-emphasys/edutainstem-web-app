// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FirebaseAuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FirebaseAuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FirebaseAuthEvent()';
}


}

/// @nodoc
class $FirebaseAuthEventCopyWith<$Res>  {
$FirebaseAuthEventCopyWith(FirebaseAuthEvent _, $Res Function(FirebaseAuthEvent) __);
}


/// Adds pattern-matching-related methods to [FirebaseAuthEvent].
extension FirebaseAuthEventPatterns on FirebaseAuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EventStarted value)?  started,TResult Function( _EventGoogleSignIn value)?  googleSignIn,TResult Function( _EventReSignIn value)?  reSignIn,TResult Function( _EventSignIn value)?  signIn,TResult Function( _EventSignUp value)?  signUp,TResult Function( _EventSignOut value)?  signOut,TResult Function( _EventResetPassword value)?  resetPassword,TResult Function( _AuthChanged value)?  authChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventStarted() when started != null:
return started(_that);case _EventGoogleSignIn() when googleSignIn != null:
return googleSignIn(_that);case _EventReSignIn() when reSignIn != null:
return reSignIn(_that);case _EventSignIn() when signIn != null:
return signIn(_that);case _EventSignUp() when signUp != null:
return signUp(_that);case _EventSignOut() when signOut != null:
return signOut(_that);case _EventResetPassword() when resetPassword != null:
return resetPassword(_that);case _AuthChanged() when authChanged != null:
return authChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EventStarted value)  started,required TResult Function( _EventGoogleSignIn value)  googleSignIn,required TResult Function( _EventReSignIn value)  reSignIn,required TResult Function( _EventSignIn value)  signIn,required TResult Function( _EventSignUp value)  signUp,required TResult Function( _EventSignOut value)  signOut,required TResult Function( _EventResetPassword value)  resetPassword,required TResult Function( _AuthChanged value)  authChanged,}){
final _that = this;
switch (_that) {
case _EventStarted():
return started(_that);case _EventGoogleSignIn():
return googleSignIn(_that);case _EventReSignIn():
return reSignIn(_that);case _EventSignIn():
return signIn(_that);case _EventSignUp():
return signUp(_that);case _EventSignOut():
return signOut(_that);case _EventResetPassword():
return resetPassword(_that);case _AuthChanged():
return authChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EventStarted value)?  started,TResult? Function( _EventGoogleSignIn value)?  googleSignIn,TResult? Function( _EventReSignIn value)?  reSignIn,TResult? Function( _EventSignIn value)?  signIn,TResult? Function( _EventSignUp value)?  signUp,TResult? Function( _EventSignOut value)?  signOut,TResult? Function( _EventResetPassword value)?  resetPassword,TResult? Function( _AuthChanged value)?  authChanged,}){
final _that = this;
switch (_that) {
case _EventStarted() when started != null:
return started(_that);case _EventGoogleSignIn() when googleSignIn != null:
return googleSignIn(_that);case _EventReSignIn() when reSignIn != null:
return reSignIn(_that);case _EventSignIn() when signIn != null:
return signIn(_that);case _EventSignUp() when signUp != null:
return signUp(_that);case _EventSignOut() when signOut != null:
return signOut(_that);case _EventResetPassword() when resetPassword != null:
return resetPassword(_that);case _AuthChanged() when authChanged != null:
return authChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  googleSignIn,TResult Function()?  reSignIn,TResult Function( String email,  String password)?  signIn,TResult Function( AuthModel data)?  signUp,TResult Function()?  signOut,TResult Function( String email)?  resetPassword,TResult Function( User? user)?  authChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventStarted() when started != null:
return started();case _EventGoogleSignIn() when googleSignIn != null:
return googleSignIn();case _EventReSignIn() when reSignIn != null:
return reSignIn();case _EventSignIn() when signIn != null:
return signIn(_that.email,_that.password);case _EventSignUp() when signUp != null:
return signUp(_that.data);case _EventSignOut() when signOut != null:
return signOut();case _EventResetPassword() when resetPassword != null:
return resetPassword(_that.email);case _AuthChanged() when authChanged != null:
return authChanged(_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  googleSignIn,required TResult Function()  reSignIn,required TResult Function( String email,  String password)  signIn,required TResult Function( AuthModel data)  signUp,required TResult Function()  signOut,required TResult Function( String email)  resetPassword,required TResult Function( User? user)  authChanged,}) {final _that = this;
switch (_that) {
case _EventStarted():
return started();case _EventGoogleSignIn():
return googleSignIn();case _EventReSignIn():
return reSignIn();case _EventSignIn():
return signIn(_that.email,_that.password);case _EventSignUp():
return signUp(_that.data);case _EventSignOut():
return signOut();case _EventResetPassword():
return resetPassword(_that.email);case _AuthChanged():
return authChanged(_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  googleSignIn,TResult? Function()?  reSignIn,TResult? Function( String email,  String password)?  signIn,TResult? Function( AuthModel data)?  signUp,TResult? Function()?  signOut,TResult? Function( String email)?  resetPassword,TResult? Function( User? user)?  authChanged,}) {final _that = this;
switch (_that) {
case _EventStarted() when started != null:
return started();case _EventGoogleSignIn() when googleSignIn != null:
return googleSignIn();case _EventReSignIn() when reSignIn != null:
return reSignIn();case _EventSignIn() when signIn != null:
return signIn(_that.email,_that.password);case _EventSignUp() when signUp != null:
return signUp(_that.data);case _EventSignOut() when signOut != null:
return signOut();case _EventResetPassword() when resetPassword != null:
return resetPassword(_that.email);case _AuthChanged() when authChanged != null:
return authChanged(_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _EventStarted implements FirebaseAuthEvent {
  const _EventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FirebaseAuthEvent.started()';
}


}




/// @nodoc


class _EventGoogleSignIn implements FirebaseAuthEvent {
  const _EventGoogleSignIn();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventGoogleSignIn);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FirebaseAuthEvent.googleSignIn()';
}


}




/// @nodoc


class _EventReSignIn implements FirebaseAuthEvent {
  const _EventReSignIn();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventReSignIn);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FirebaseAuthEvent.reSignIn()';
}


}




/// @nodoc


class _EventSignIn implements FirebaseAuthEvent {
  const _EventSignIn({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of FirebaseAuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventSignInCopyWith<_EventSignIn> get copyWith => __$EventSignInCopyWithImpl<_EventSignIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventSignIn&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'FirebaseAuthEvent.signIn(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$EventSignInCopyWith<$Res> implements $FirebaseAuthEventCopyWith<$Res> {
  factory _$EventSignInCopyWith(_EventSignIn value, $Res Function(_EventSignIn) _then) = __$EventSignInCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$EventSignInCopyWithImpl<$Res>
    implements _$EventSignInCopyWith<$Res> {
  __$EventSignInCopyWithImpl(this._self, this._then);

  final _EventSignIn _self;
  final $Res Function(_EventSignIn) _then;

/// Create a copy of FirebaseAuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_EventSignIn(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _EventSignUp implements FirebaseAuthEvent {
  const _EventSignUp(this.data);
  

 final  AuthModel data;

/// Create a copy of FirebaseAuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventSignUpCopyWith<_EventSignUp> get copyWith => __$EventSignUpCopyWithImpl<_EventSignUp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventSignUp&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'FirebaseAuthEvent.signUp(data: $data)';
}


}

/// @nodoc
abstract mixin class _$EventSignUpCopyWith<$Res> implements $FirebaseAuthEventCopyWith<$Res> {
  factory _$EventSignUpCopyWith(_EventSignUp value, $Res Function(_EventSignUp) _then) = __$EventSignUpCopyWithImpl;
@useResult
$Res call({
 AuthModel data
});


$AuthModelCopyWith<$Res> get data;

}
/// @nodoc
class __$EventSignUpCopyWithImpl<$Res>
    implements _$EventSignUpCopyWith<$Res> {
  __$EventSignUpCopyWithImpl(this._self, this._then);

  final _EventSignUp _self;
  final $Res Function(_EventSignUp) _then;

/// Create a copy of FirebaseAuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_EventSignUp(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AuthModel,
  ));
}

/// Create a copy of FirebaseAuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthModelCopyWith<$Res> get data {
  
  return $AuthModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _EventSignOut implements FirebaseAuthEvent {
  const _EventSignOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventSignOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FirebaseAuthEvent.signOut()';
}


}




/// @nodoc


class _EventResetPassword implements FirebaseAuthEvent {
  const _EventResetPassword({required this.email});
  

 final  String email;

/// Create a copy of FirebaseAuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventResetPasswordCopyWith<_EventResetPassword> get copyWith => __$EventResetPasswordCopyWithImpl<_EventResetPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventResetPassword&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'FirebaseAuthEvent.resetPassword(email: $email)';
}


}

/// @nodoc
abstract mixin class _$EventResetPasswordCopyWith<$Res> implements $FirebaseAuthEventCopyWith<$Res> {
  factory _$EventResetPasswordCopyWith(_EventResetPassword value, $Res Function(_EventResetPassword) _then) = __$EventResetPasswordCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class __$EventResetPasswordCopyWithImpl<$Res>
    implements _$EventResetPasswordCopyWith<$Res> {
  __$EventResetPasswordCopyWithImpl(this._self, this._then);

  final _EventResetPassword _self;
  final $Res Function(_EventResetPassword) _then;

/// Create a copy of FirebaseAuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_EventResetPassword(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AuthChanged implements FirebaseAuthEvent {
  const _AuthChanged(this.user);
  

 final  User? user;

/// Create a copy of FirebaseAuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthChangedCopyWith<_AuthChanged> get copyWith => __$AuthChangedCopyWithImpl<_AuthChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthChanged&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'FirebaseAuthEvent.authChanged(user: $user)';
}


}

/// @nodoc
abstract mixin class _$AuthChangedCopyWith<$Res> implements $FirebaseAuthEventCopyWith<$Res> {
  factory _$AuthChangedCopyWith(_AuthChanged value, $Res Function(_AuthChanged) _then) = __$AuthChangedCopyWithImpl;
@useResult
$Res call({
 User? user
});




}
/// @nodoc
class __$AuthChangedCopyWithImpl<$Res>
    implements _$AuthChangedCopyWith<$Res> {
  __$AuthChangedCopyWithImpl(this._self, this._then);

  final _AuthChanged _self;
  final $Res Function(_AuthChanged) _then;

/// Create a copy of FirebaseAuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_AuthChanged(
freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}


}

/// @nodoc
mixin _$FirebaseAuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FirebaseAuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FirebaseAuthState()';
}


}

/// @nodoc
class $FirebaseAuthStateCopyWith<$Res>  {
$FirebaseAuthStateCopyWith(FirebaseAuthState _, $Res Function(FirebaseAuthState) __);
}


/// Adds pattern-matching-related methods to [FirebaseAuthState].
extension FirebaseAuthStatePatterns on FirebaseAuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StateInitial value)?  initial,TResult Function( _StateLoading value)?  loading,TResult Function( _StateAuthenticated value)?  authenticated,TResult Function( _StateUnauthenticated value)?  unauthenticated,TResult Function( _StateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StateInitial() when initial != null:
return initial(_that);case _StateLoading() when loading != null:
return loading(_that);case _StateAuthenticated() when authenticated != null:
return authenticated(_that);case _StateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _StateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StateInitial value)  initial,required TResult Function( _StateLoading value)  loading,required TResult Function( _StateAuthenticated value)  authenticated,required TResult Function( _StateUnauthenticated value)  unauthenticated,required TResult Function( _StateError value)  error,}){
final _that = this;
switch (_that) {
case _StateInitial():
return initial(_that);case _StateLoading():
return loading(_that);case _StateAuthenticated():
return authenticated(_that);case _StateUnauthenticated():
return unauthenticated(_that);case _StateError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StateInitial value)?  initial,TResult? Function( _StateLoading value)?  loading,TResult? Function( _StateAuthenticated value)?  authenticated,TResult? Function( _StateUnauthenticated value)?  unauthenticated,TResult? Function( _StateError value)?  error,}){
final _that = this;
switch (_that) {
case _StateInitial() when initial != null:
return initial(_that);case _StateLoading() when loading != null:
return loading(_that);case _StateAuthenticated() when authenticated != null:
return authenticated(_that);case _StateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _StateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( User user,  SignInTypeEnum signInType)?  authenticated,TResult Function()?  unauthenticated,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StateInitial() when initial != null:
return initial();case _StateLoading() when loading != null:
return loading();case _StateAuthenticated() when authenticated != null:
return authenticated(_that.user,_that.signInType);case _StateUnauthenticated() when unauthenticated != null:
return unauthenticated();case _StateError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( User user,  SignInTypeEnum signInType)  authenticated,required TResult Function()  unauthenticated,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _StateInitial():
return initial();case _StateLoading():
return loading();case _StateAuthenticated():
return authenticated(_that.user,_that.signInType);case _StateUnauthenticated():
return unauthenticated();case _StateError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( User user,  SignInTypeEnum signInType)?  authenticated,TResult? Function()?  unauthenticated,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _StateInitial() when initial != null:
return initial();case _StateLoading() when loading != null:
return loading();case _StateAuthenticated() when authenticated != null:
return authenticated(_that.user,_that.signInType);case _StateUnauthenticated() when unauthenticated != null:
return unauthenticated();case _StateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _StateInitial implements FirebaseAuthState {
  const _StateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FirebaseAuthState.initial()';
}


}




/// @nodoc


class _StateLoading implements FirebaseAuthState {
  const _StateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FirebaseAuthState.loading()';
}


}




/// @nodoc


class _StateAuthenticated implements FirebaseAuthState {
  const _StateAuthenticated({required this.user, required this.signInType});
  

 final  User user;
 final  SignInTypeEnum signInType;

/// Create a copy of FirebaseAuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateAuthenticatedCopyWith<_StateAuthenticated> get copyWith => __$StateAuthenticatedCopyWithImpl<_StateAuthenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StateAuthenticated&&(identical(other.user, user) || other.user == user)&&(identical(other.signInType, signInType) || other.signInType == signInType));
}


@override
int get hashCode => Object.hash(runtimeType,user,signInType);

@override
String toString() {
  return 'FirebaseAuthState.authenticated(user: $user, signInType: $signInType)';
}


}

/// @nodoc
abstract mixin class _$StateAuthenticatedCopyWith<$Res> implements $FirebaseAuthStateCopyWith<$Res> {
  factory _$StateAuthenticatedCopyWith(_StateAuthenticated value, $Res Function(_StateAuthenticated) _then) = __$StateAuthenticatedCopyWithImpl;
@useResult
$Res call({
 User user, SignInTypeEnum signInType
});




}
/// @nodoc
class __$StateAuthenticatedCopyWithImpl<$Res>
    implements _$StateAuthenticatedCopyWith<$Res> {
  __$StateAuthenticatedCopyWithImpl(this._self, this._then);

  final _StateAuthenticated _self;
  final $Res Function(_StateAuthenticated) _then;

/// Create a copy of FirebaseAuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,Object? signInType = null,}) {
  return _then(_StateAuthenticated(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,signInType: null == signInType ? _self.signInType : signInType // ignore: cast_nullable_to_non_nullable
as SignInTypeEnum,
  ));
}


}

/// @nodoc


class _StateUnauthenticated implements FirebaseAuthState {
  const _StateUnauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StateUnauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FirebaseAuthState.unauthenticated()';
}


}




/// @nodoc


class _StateError implements FirebaseAuthState {
  const _StateError({required this.message});
  

 final  String message;

/// Create a copy of FirebaseAuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateErrorCopyWith<_StateError> get copyWith => __$StateErrorCopyWithImpl<_StateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FirebaseAuthState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$StateErrorCopyWith<$Res> implements $FirebaseAuthStateCopyWith<$Res> {
  factory _$StateErrorCopyWith(_StateError value, $Res Function(_StateError) _then) = __$StateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$StateErrorCopyWithImpl<$Res>
    implements _$StateErrorCopyWith<$Res> {
  __$StateErrorCopyWithImpl(this._self, this._then);

  final _StateError _self;
  final $Res Function(_StateError) _then;

/// Create a copy of FirebaseAuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_StateError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
