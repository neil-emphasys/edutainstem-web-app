// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_upload_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LessonUploadEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonUploadEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonUploadEvent()';
}


}

/// @nodoc
class $LessonUploadEventCopyWith<$Res>  {
$LessonUploadEventCopyWith(LessonUploadEvent _, $Res Function(LessonUploadEvent) __);
}


/// Adds pattern-matching-related methods to [LessonUploadEvent].
extension LessonUploadEventPatterns on LessonUploadEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SetInitialData value)?  setInitialData,TResult Function( _PreviousStep value)?  previousStep,TResult Function( _NextStep value)?  nextStep,TResult Function( _Close value)?  close,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetInitialData() when setInitialData != null:
return setInitialData(_that);case _PreviousStep() when previousStep != null:
return previousStep(_that);case _NextStep() when nextStep != null:
return nextStep(_that);case _Close() when close != null:
return close(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SetInitialData value)  setInitialData,required TResult Function( _PreviousStep value)  previousStep,required TResult Function( _NextStep value)  nextStep,required TResult Function( _Close value)  close,}){
final _that = this;
switch (_that) {
case _SetInitialData():
return setInitialData(_that);case _PreviousStep():
return previousStep(_that);case _NextStep():
return nextStep(_that);case _Close():
return close(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SetInitialData value)?  setInitialData,TResult? Function( _PreviousStep value)?  previousStep,TResult? Function( _NextStep value)?  nextStep,TResult? Function( _Close value)?  close,}){
final _that = this;
switch (_that) {
case _SetInitialData() when setInitialData != null:
return setInitialData(_that);case _PreviousStep() when previousStep != null:
return previousStep(_that);case _NextStep() when nextStep != null:
return nextStep(_that);case _Close() when close != null:
return close(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int maxStep)?  setInitialData,TResult Function()?  previousStep,TResult Function()?  nextStep,TResult Function()?  close,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetInitialData() when setInitialData != null:
return setInitialData(_that.maxStep);case _PreviousStep() when previousStep != null:
return previousStep();case _NextStep() when nextStep != null:
return nextStep();case _Close() when close != null:
return close();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int maxStep)  setInitialData,required TResult Function()  previousStep,required TResult Function()  nextStep,required TResult Function()  close,}) {final _that = this;
switch (_that) {
case _SetInitialData():
return setInitialData(_that.maxStep);case _PreviousStep():
return previousStep();case _NextStep():
return nextStep();case _Close():
return close();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int maxStep)?  setInitialData,TResult? Function()?  previousStep,TResult? Function()?  nextStep,TResult? Function()?  close,}) {final _that = this;
switch (_that) {
case _SetInitialData() when setInitialData != null:
return setInitialData(_that.maxStep);case _PreviousStep() when previousStep != null:
return previousStep();case _NextStep() when nextStep != null:
return nextStep();case _Close() when close != null:
return close();case _:
  return null;

}
}

}

/// @nodoc


class _SetInitialData implements LessonUploadEvent {
  const _SetInitialData({required this.maxStep});
  

 final  int maxStep;

/// Create a copy of LessonUploadEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetInitialDataCopyWith<_SetInitialData> get copyWith => __$SetInitialDataCopyWithImpl<_SetInitialData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetInitialData&&(identical(other.maxStep, maxStep) || other.maxStep == maxStep));
}


@override
int get hashCode => Object.hash(runtimeType,maxStep);

@override
String toString() {
  return 'LessonUploadEvent.setInitialData(maxStep: $maxStep)';
}


}

/// @nodoc
abstract mixin class _$SetInitialDataCopyWith<$Res> implements $LessonUploadEventCopyWith<$Res> {
  factory _$SetInitialDataCopyWith(_SetInitialData value, $Res Function(_SetInitialData) _then) = __$SetInitialDataCopyWithImpl;
@useResult
$Res call({
 int maxStep
});




}
/// @nodoc
class __$SetInitialDataCopyWithImpl<$Res>
    implements _$SetInitialDataCopyWith<$Res> {
  __$SetInitialDataCopyWithImpl(this._self, this._then);

  final _SetInitialData _self;
  final $Res Function(_SetInitialData) _then;

/// Create a copy of LessonUploadEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? maxStep = null,}) {
  return _then(_SetInitialData(
maxStep: null == maxStep ? _self.maxStep : maxStep // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _PreviousStep implements LessonUploadEvent {
  const _PreviousStep();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreviousStep);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonUploadEvent.previousStep()';
}


}




/// @nodoc


class _NextStep implements LessonUploadEvent {
  const _NextStep();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextStep);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonUploadEvent.nextStep()';
}


}




/// @nodoc


class _Close implements LessonUploadEvent {
  const _Close();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Close);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonUploadEvent.close()';
}


}




/// @nodoc
mixin _$LessonUploadState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonUploadState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonUploadState()';
}


}

/// @nodoc
class $LessonUploadStateCopyWith<$Res>  {
$LessonUploadStateCopyWith(LessonUploadState _, $Res Function(LessonUploadState) __);
}


/// Adds pattern-matching-related methods to [LessonUploadState].
extension LessonUploadStatePatterns on LessonUploadState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _DoneLoading value)?  doneLoading,TResult Function( _Done value)?  done,TResult Function( _Closed value)?  closed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _DoneLoading() when doneLoading != null:
return doneLoading(_that);case _Done() when done != null:
return done(_that);case _Closed() when closed != null:
return closed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _DoneLoading value)  doneLoading,required TResult Function( _Done value)  done,required TResult Function( _Closed value)  closed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _DoneLoading():
return doneLoading(_that);case _Done():
return done(_that);case _Closed():
return closed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _DoneLoading value)?  doneLoading,TResult? Function( _Done value)?  done,TResult? Function( _Closed value)?  closed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _DoneLoading() when doneLoading != null:
return doneLoading(_that);case _Done() when done != null:
return done(_that);case _Closed() when closed != null:
return closed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( StepperModel<LessonModel> data)?  initial,TResult Function()?  loading,TResult Function()?  doneLoading,TResult Function()?  done,TResult Function()?  closed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.data);case _Loading() when loading != null:
return loading();case _DoneLoading() when doneLoading != null:
return doneLoading();case _Done() when done != null:
return done();case _Closed() when closed != null:
return closed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( StepperModel<LessonModel> data)  initial,required TResult Function()  loading,required TResult Function()  doneLoading,required TResult Function()  done,required TResult Function()  closed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.data);case _Loading():
return loading();case _DoneLoading():
return doneLoading();case _Done():
return done();case _Closed():
return closed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( StepperModel<LessonModel> data)?  initial,TResult? Function()?  loading,TResult? Function()?  doneLoading,TResult? Function()?  done,TResult? Function()?  closed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.data);case _Loading() when loading != null:
return loading();case _DoneLoading() when doneLoading != null:
return doneLoading();case _Done() when done != null:
return done();case _Closed() when closed != null:
return closed();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements LessonUploadState {
  const _Initial(this.data);
  

 final  StepperModel<LessonModel> data;

/// Create a copy of LessonUploadState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
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
  return 'LessonUploadState.initial(data: $data)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $LessonUploadStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@useResult
$Res call({
 StepperModel<LessonModel> data
});


$StepperModelCopyWith<LessonModel, $Res> get data;

}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of LessonUploadState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_Initial(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as StepperModel<LessonModel>,
  ));
}

/// Create a copy of LessonUploadState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StepperModelCopyWith<LessonModel, $Res> get data {
  
  return $StepperModelCopyWith<LessonModel, $Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _Loading implements LessonUploadState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonUploadState.loading()';
}


}




/// @nodoc


class _DoneLoading implements LessonUploadState {
  const _DoneLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DoneLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonUploadState.doneLoading()';
}


}




/// @nodoc


class _Done implements LessonUploadState {
  const _Done();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Done);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonUploadState.done()';
}


}




/// @nodoc


class _Closed implements LessonUploadState {
  const _Closed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Closed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LessonUploadState.closed()';
}


}




// dart format on
