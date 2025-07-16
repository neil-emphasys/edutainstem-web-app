// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoomCreateEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomCreateEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoomCreateEvent()';
}


}

/// @nodoc
class $RoomCreateEventCopyWith<$Res>  {
$RoomCreateEventCopyWith(RoomCreateEvent _, $Res Function(RoomCreateEvent) __);
}


/// Adds pattern-matching-related methods to [RoomCreateEvent].
extension RoomCreateEventPatterns on RoomCreateEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PreviousStep value)?  previousStep,TResult Function( _NextStep value)?  nextStep,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PreviousStep() when previousStep != null:
return previousStep(_that);case _NextStep() when nextStep != null:
return nextStep(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PreviousStep value)  previousStep,required TResult Function( _NextStep value)  nextStep,}){
final _that = this;
switch (_that) {
case _PreviousStep():
return previousStep(_that);case _NextStep():
return nextStep(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PreviousStep value)?  previousStep,TResult? Function( _NextStep value)?  nextStep,}){
final _that = this;
switch (_that) {
case _PreviousStep() when previousStep != null:
return previousStep(_that);case _NextStep() when nextStep != null:
return nextStep(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  previousStep,TResult Function()?  nextStep,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PreviousStep() when previousStep != null:
return previousStep();case _NextStep() when nextStep != null:
return nextStep();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  previousStep,required TResult Function()  nextStep,}) {final _that = this;
switch (_that) {
case _PreviousStep():
return previousStep();case _NextStep():
return nextStep();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  previousStep,TResult? Function()?  nextStep,}) {final _that = this;
switch (_that) {
case _PreviousStep() when previousStep != null:
return previousStep();case _NextStep() when nextStep != null:
return nextStep();case _:
  return null;

}
}

}

/// @nodoc


class _PreviousStep implements RoomCreateEvent {
  const _PreviousStep();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreviousStep);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoomCreateEvent.previousStep()';
}


}




/// @nodoc


class _NextStep implements RoomCreateEvent {
  const _NextStep();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextStep);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoomCreateEvent.nextStep()';
}


}




/// @nodoc
mixin _$RoomCreateState {

 StepperModel<RoomModel> get data;
/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomCreateStateCopyWith<RoomCreateState> get copyWith => _$RoomCreateStateCopyWithImpl<RoomCreateState>(this as RoomCreateState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomCreateState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'RoomCreateState(data: $data)';
}


}

/// @nodoc
abstract mixin class $RoomCreateStateCopyWith<$Res>  {
  factory $RoomCreateStateCopyWith(RoomCreateState value, $Res Function(RoomCreateState) _then) = _$RoomCreateStateCopyWithImpl;
@useResult
$Res call({
 StepperModel<RoomModel> data
});


$StepperModelCopyWith<RoomModel, $Res> get data;

}
/// @nodoc
class _$RoomCreateStateCopyWithImpl<$Res>
    implements $RoomCreateStateCopyWith<$Res> {
  _$RoomCreateStateCopyWithImpl(this._self, this._then);

  final RoomCreateState _self;
  final $Res Function(RoomCreateState) _then;

/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as StepperModel<RoomModel>,
  ));
}
/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StepperModelCopyWith<RoomModel, $Res> get data {
  
  return $StepperModelCopyWith<RoomModel, $Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [RoomCreateState].
extension RoomCreateStatePatterns on RoomCreateState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( StepperModel<RoomModel> data)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( StepperModel<RoomModel> data)  initial,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( StepperModel<RoomModel> data)?  initial,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements RoomCreateState {
  const _Initial(this.data);
  

@override final  StepperModel<RoomModel> data;

/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'RoomCreateState.initial(data: $data)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $RoomCreateStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 StepperModel<RoomModel> data
});


@override $StepperModelCopyWith<RoomModel, $Res> get data;

}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_Initial(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as StepperModel<RoomModel>,
  ));
}

/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StepperModelCopyWith<RoomModel, $Res> get data {
  
  return $StepperModelCopyWith<RoomModel, $Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
