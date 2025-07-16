// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StepModel {

 String get title; String? get customStep; bool get isDone;
/// Create a copy of StepModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StepModelCopyWith<StepModel> get copyWith => _$StepModelCopyWithImpl<StepModel>(this as StepModel, _$identity);

  /// Serializes this StepModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StepModel&&(identical(other.title, title) || other.title == title)&&(identical(other.customStep, customStep) || other.customStep == customStep)&&(identical(other.isDone, isDone) || other.isDone == isDone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,customStep,isDone);

@override
String toString() {
  return 'StepModel(title: $title, customStep: $customStep, isDone: $isDone)';
}


}

/// @nodoc
abstract mixin class $StepModelCopyWith<$Res>  {
  factory $StepModelCopyWith(StepModel value, $Res Function(StepModel) _then) = _$StepModelCopyWithImpl;
@useResult
$Res call({
 String title, String? customStep, bool isDone
});




}
/// @nodoc
class _$StepModelCopyWithImpl<$Res>
    implements $StepModelCopyWith<$Res> {
  _$StepModelCopyWithImpl(this._self, this._then);

  final StepModel _self;
  final $Res Function(StepModel) _then;

/// Create a copy of StepModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? customStep = freezed,Object? isDone = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,customStep: freezed == customStep ? _self.customStep : customStep // ignore: cast_nullable_to_non_nullable
as String?,isDone: null == isDone ? _self.isDone : isDone // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StepModel].
extension StepModelPatterns on StepModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StepModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StepModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StepModel value)  $default,){
final _that = this;
switch (_that) {
case _StepModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StepModel value)?  $default,){
final _that = this;
switch (_that) {
case _StepModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String? customStep,  bool isDone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StepModel() when $default != null:
return $default(_that.title,_that.customStep,_that.isDone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String? customStep,  bool isDone)  $default,) {final _that = this;
switch (_that) {
case _StepModel():
return $default(_that.title,_that.customStep,_that.isDone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String? customStep,  bool isDone)?  $default,) {final _that = this;
switch (_that) {
case _StepModel() when $default != null:
return $default(_that.title,_that.customStep,_that.isDone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StepModel implements StepModel {
  const _StepModel({required this.title, this.customStep, this.isDone = false});
  factory _StepModel.fromJson(Map<String, dynamic> json) => _$StepModelFromJson(json);

@override final  String title;
@override final  String? customStep;
@override@JsonKey() final  bool isDone;

/// Create a copy of StepModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StepModelCopyWith<_StepModel> get copyWith => __$StepModelCopyWithImpl<_StepModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StepModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StepModel&&(identical(other.title, title) || other.title == title)&&(identical(other.customStep, customStep) || other.customStep == customStep)&&(identical(other.isDone, isDone) || other.isDone == isDone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,customStep,isDone);

@override
String toString() {
  return 'StepModel(title: $title, customStep: $customStep, isDone: $isDone)';
}


}

/// @nodoc
abstract mixin class _$StepModelCopyWith<$Res> implements $StepModelCopyWith<$Res> {
  factory _$StepModelCopyWith(_StepModel value, $Res Function(_StepModel) _then) = __$StepModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String? customStep, bool isDone
});




}
/// @nodoc
class __$StepModelCopyWithImpl<$Res>
    implements _$StepModelCopyWith<$Res> {
  __$StepModelCopyWithImpl(this._self, this._then);

  final _StepModel _self;
  final $Res Function(_StepModel) _then;

/// Create a copy of StepModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? customStep = freezed,Object? isDone = null,}) {
  return _then(_StepModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,customStep: freezed == customStep ? _self.customStep : customStep // ignore: cast_nullable_to_non_nullable
as String?,isDone: null == isDone ? _self.isDone : isDone // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$StepperModel<T> {

 int get activeStep; int get previousStep; int get maxReachedStep; T get data;
/// Create a copy of StepperModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StepperModelCopyWith<T, StepperModel<T>> get copyWith => _$StepperModelCopyWithImpl<T, StepperModel<T>>(this as StepperModel<T>, _$identity);

  /// Serializes this StepperModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StepperModel<T>&&(identical(other.activeStep, activeStep) || other.activeStep == activeStep)&&(identical(other.previousStep, previousStep) || other.previousStep == previousStep)&&(identical(other.maxReachedStep, maxReachedStep) || other.maxReachedStep == maxReachedStep)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activeStep,previousStep,maxReachedStep,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'StepperModel<$T>(activeStep: $activeStep, previousStep: $previousStep, maxReachedStep: $maxReachedStep, data: $data)';
}


}

/// @nodoc
abstract mixin class $StepperModelCopyWith<T,$Res>  {
  factory $StepperModelCopyWith(StepperModel<T> value, $Res Function(StepperModel<T>) _then) = _$StepperModelCopyWithImpl;
@useResult
$Res call({
 int activeStep, int previousStep, int maxReachedStep, T data
});




}
/// @nodoc
class _$StepperModelCopyWithImpl<T,$Res>
    implements $StepperModelCopyWith<T, $Res> {
  _$StepperModelCopyWithImpl(this._self, this._then);

  final StepperModel<T> _self;
  final $Res Function(StepperModel<T>) _then;

/// Create a copy of StepperModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activeStep = null,Object? previousStep = null,Object? maxReachedStep = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
activeStep: null == activeStep ? _self.activeStep : activeStep // ignore: cast_nullable_to_non_nullable
as int,previousStep: null == previousStep ? _self.previousStep : previousStep // ignore: cast_nullable_to_non_nullable
as int,maxReachedStep: null == maxReachedStep ? _self.maxReachedStep : maxReachedStep // ignore: cast_nullable_to_non_nullable
as int,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

}


/// Adds pattern-matching-related methods to [StepperModel].
extension StepperModelPatterns<T> on StepperModel<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StepperModel<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StepperModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StepperModel<T> value)  $default,){
final _that = this;
switch (_that) {
case _StepperModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StepperModel<T> value)?  $default,){
final _that = this;
switch (_that) {
case _StepperModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int activeStep,  int previousStep,  int maxReachedStep,  T data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StepperModel() when $default != null:
return $default(_that.activeStep,_that.previousStep,_that.maxReachedStep,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int activeStep,  int previousStep,  int maxReachedStep,  T data)  $default,) {final _that = this;
switch (_that) {
case _StepperModel():
return $default(_that.activeStep,_that.previousStep,_that.maxReachedStep,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int activeStep,  int previousStep,  int maxReachedStep,  T data)?  $default,) {final _that = this;
switch (_that) {
case _StepperModel() when $default != null:
return $default(_that.activeStep,_that.previousStep,_that.maxReachedStep,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _StepperModel<T> implements StepperModel<T> {
  const _StepperModel({required this.activeStep, required this.previousStep, required this.maxReachedStep, required this.data});
  factory _StepperModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$StepperModelFromJson(json,fromJsonT);

@override final  int activeStep;
@override final  int previousStep;
@override final  int maxReachedStep;
@override final  T data;

/// Create a copy of StepperModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StepperModelCopyWith<T, _StepperModel<T>> get copyWith => __$StepperModelCopyWithImpl<T, _StepperModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$StepperModelToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StepperModel<T>&&(identical(other.activeStep, activeStep) || other.activeStep == activeStep)&&(identical(other.previousStep, previousStep) || other.previousStep == previousStep)&&(identical(other.maxReachedStep, maxReachedStep) || other.maxReachedStep == maxReachedStep)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activeStep,previousStep,maxReachedStep,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'StepperModel<$T>(activeStep: $activeStep, previousStep: $previousStep, maxReachedStep: $maxReachedStep, data: $data)';
}


}

/// @nodoc
abstract mixin class _$StepperModelCopyWith<T,$Res> implements $StepperModelCopyWith<T, $Res> {
  factory _$StepperModelCopyWith(_StepperModel<T> value, $Res Function(_StepperModel<T>) _then) = __$StepperModelCopyWithImpl;
@override @useResult
$Res call({
 int activeStep, int previousStep, int maxReachedStep, T data
});




}
/// @nodoc
class __$StepperModelCopyWithImpl<T,$Res>
    implements _$StepperModelCopyWith<T, $Res> {
  __$StepperModelCopyWithImpl(this._self, this._then);

  final _StepperModel<T> _self;
  final $Res Function(_StepperModel<T>) _then;

/// Create a copy of StepperModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activeStep = null,Object? previousStep = null,Object? maxReachedStep = null,Object? data = freezed,}) {
  return _then(_StepperModel<T>(
activeStep: null == activeStep ? _self.activeStep : activeStep // ignore: cast_nullable_to_non_nullable
as int,previousStep: null == previousStep ? _self.previousStep : previousStep // ignore: cast_nullable_to_non_nullable
as int,maxReachedStep: null == maxReachedStep ? _self.maxReachedStep : maxReachedStep // ignore: cast_nullable_to_non_nullable
as int,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

// dart format on
