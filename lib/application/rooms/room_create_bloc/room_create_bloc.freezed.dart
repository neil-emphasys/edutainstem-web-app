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
mixin _$RoomCreateEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomCreateEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SetInitialData value)?  setInitialData,TResult Function( _PreviousStep value)?  previousStep,TResult Function( _NextStep value)?  nextStep,TResult Function( _CreateRoom value)?  createRoom,TResult Function( _SetRoom value)?  setRoom,TResult Function( _Close value)?  close,TResult Function( _ReOpen value)?  reOpen,TResult Function( _StartLesson value)?  startLesson,TResult Function( _UpdateEnrollmentsDifficulty value)?  updateEnrollmentsDifficulty,TResult Function( _SwitchCloseView value)?  switchCloseView,TResult Function( _SetPreferredLessons value)?  setPreferredLessons,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetInitialData() when setInitialData != null:
return setInitialData(_that);case _PreviousStep() when previousStep != null:
return previousStep(_that);case _NextStep() when nextStep != null:
return nextStep(_that);case _CreateRoom() when createRoom != null:
return createRoom(_that);case _SetRoom() when setRoom != null:
return setRoom(_that);case _Close() when close != null:
return close(_that);case _ReOpen() when reOpen != null:
return reOpen(_that);case _StartLesson() when startLesson != null:
return startLesson(_that);case _UpdateEnrollmentsDifficulty() when updateEnrollmentsDifficulty != null:
return updateEnrollmentsDifficulty(_that);case _SwitchCloseView() when switchCloseView != null:
return switchCloseView(_that);case _SetPreferredLessons() when setPreferredLessons != null:
return setPreferredLessons(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SetInitialData value)  setInitialData,required TResult Function( _PreviousStep value)  previousStep,required TResult Function( _NextStep value)  nextStep,required TResult Function( _CreateRoom value)  createRoom,required TResult Function( _SetRoom value)  setRoom,required TResult Function( _Close value)  close,required TResult Function( _ReOpen value)  reOpen,required TResult Function( _StartLesson value)  startLesson,required TResult Function( _UpdateEnrollmentsDifficulty value)  updateEnrollmentsDifficulty,required TResult Function( _SwitchCloseView value)  switchCloseView,required TResult Function( _SetPreferredLessons value)  setPreferredLessons,}){
final _that = this;
switch (_that) {
case _SetInitialData():
return setInitialData(_that);case _PreviousStep():
return previousStep(_that);case _NextStep():
return nextStep(_that);case _CreateRoom():
return createRoom(_that);case _SetRoom():
return setRoom(_that);case _Close():
return close(_that);case _ReOpen():
return reOpen(_that);case _StartLesson():
return startLesson(_that);case _UpdateEnrollmentsDifficulty():
return updateEnrollmentsDifficulty(_that);case _SwitchCloseView():
return switchCloseView(_that);case _SetPreferredLessons():
return setPreferredLessons(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SetInitialData value)?  setInitialData,TResult? Function( _PreviousStep value)?  previousStep,TResult? Function( _NextStep value)?  nextStep,TResult? Function( _CreateRoom value)?  createRoom,TResult? Function( _SetRoom value)?  setRoom,TResult? Function( _Close value)?  close,TResult? Function( _ReOpen value)?  reOpen,TResult? Function( _StartLesson value)?  startLesson,TResult? Function( _UpdateEnrollmentsDifficulty value)?  updateEnrollmentsDifficulty,TResult? Function( _SwitchCloseView value)?  switchCloseView,TResult? Function( _SetPreferredLessons value)?  setPreferredLessons,}){
final _that = this;
switch (_that) {
case _SetInitialData() when setInitialData != null:
return setInitialData(_that);case _PreviousStep() when previousStep != null:
return previousStep(_that);case _NextStep() when nextStep != null:
return nextStep(_that);case _CreateRoom() when createRoom != null:
return createRoom(_that);case _SetRoom() when setRoom != null:
return setRoom(_that);case _Close() when close != null:
return close(_that);case _ReOpen() when reOpen != null:
return reOpen(_that);case _StartLesson() when startLesson != null:
return startLesson(_that);case _UpdateEnrollmentsDifficulty() when updateEnrollmentsDifficulty != null:
return updateEnrollmentsDifficulty(_that);case _SwitchCloseView() when switchCloseView != null:
return switchCloseView(_that);case _SetPreferredLessons() when setPreferredLessons != null:
return setPreferredLessons(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int maxStep)?  setInitialData,TResult Function()?  previousStep,TResult Function( String? title,  String? description,  int? duration,  List<String>? preferredLessons)?  nextStep,TResult Function()?  createRoom,TResult Function( RoomModel room)?  setRoom,TResult Function( RoomModel room)?  close,TResult Function()?  reOpen,TResult Function()?  startLesson,TResult Function( RoomModel room,  List<StudentEnrollment> enrollments)?  updateEnrollmentsDifficulty,TResult Function( bool isDifficultyView)?  switchCloseView,TResult Function( List<String>? lessons)?  setPreferredLessons,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetInitialData() when setInitialData != null:
return setInitialData(_that.maxStep);case _PreviousStep() when previousStep != null:
return previousStep();case _NextStep() when nextStep != null:
return nextStep(_that.title,_that.description,_that.duration,_that.preferredLessons);case _CreateRoom() when createRoom != null:
return createRoom();case _SetRoom() when setRoom != null:
return setRoom(_that.room);case _Close() when close != null:
return close(_that.room);case _ReOpen() when reOpen != null:
return reOpen();case _StartLesson() when startLesson != null:
return startLesson();case _UpdateEnrollmentsDifficulty() when updateEnrollmentsDifficulty != null:
return updateEnrollmentsDifficulty(_that.room,_that.enrollments);case _SwitchCloseView() when switchCloseView != null:
return switchCloseView(_that.isDifficultyView);case _SetPreferredLessons() when setPreferredLessons != null:
return setPreferredLessons(_that.lessons);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int maxStep)  setInitialData,required TResult Function()  previousStep,required TResult Function( String? title,  String? description,  int? duration,  List<String>? preferredLessons)  nextStep,required TResult Function()  createRoom,required TResult Function( RoomModel room)  setRoom,required TResult Function( RoomModel room)  close,required TResult Function()  reOpen,required TResult Function()  startLesson,required TResult Function( RoomModel room,  List<StudentEnrollment> enrollments)  updateEnrollmentsDifficulty,required TResult Function( bool isDifficultyView)  switchCloseView,required TResult Function( List<String>? lessons)  setPreferredLessons,}) {final _that = this;
switch (_that) {
case _SetInitialData():
return setInitialData(_that.maxStep);case _PreviousStep():
return previousStep();case _NextStep():
return nextStep(_that.title,_that.description,_that.duration,_that.preferredLessons);case _CreateRoom():
return createRoom();case _SetRoom():
return setRoom(_that.room);case _Close():
return close(_that.room);case _ReOpen():
return reOpen();case _StartLesson():
return startLesson();case _UpdateEnrollmentsDifficulty():
return updateEnrollmentsDifficulty(_that.room,_that.enrollments);case _SwitchCloseView():
return switchCloseView(_that.isDifficultyView);case _SetPreferredLessons():
return setPreferredLessons(_that.lessons);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int maxStep)?  setInitialData,TResult? Function()?  previousStep,TResult? Function( String? title,  String? description,  int? duration,  List<String>? preferredLessons)?  nextStep,TResult? Function()?  createRoom,TResult? Function( RoomModel room)?  setRoom,TResult? Function( RoomModel room)?  close,TResult? Function()?  reOpen,TResult? Function()?  startLesson,TResult? Function( RoomModel room,  List<StudentEnrollment> enrollments)?  updateEnrollmentsDifficulty,TResult? Function( bool isDifficultyView)?  switchCloseView,TResult? Function( List<String>? lessons)?  setPreferredLessons,}) {final _that = this;
switch (_that) {
case _SetInitialData() when setInitialData != null:
return setInitialData(_that.maxStep);case _PreviousStep() when previousStep != null:
return previousStep();case _NextStep() when nextStep != null:
return nextStep(_that.title,_that.description,_that.duration,_that.preferredLessons);case _CreateRoom() when createRoom != null:
return createRoom();case _SetRoom() when setRoom != null:
return setRoom(_that.room);case _Close() when close != null:
return close(_that.room);case _ReOpen() when reOpen != null:
return reOpen();case _StartLesson() when startLesson != null:
return startLesson();case _UpdateEnrollmentsDifficulty() when updateEnrollmentsDifficulty != null:
return updateEnrollmentsDifficulty(_that.room,_that.enrollments);case _SwitchCloseView() when switchCloseView != null:
return switchCloseView(_that.isDifficultyView);case _SetPreferredLessons() when setPreferredLessons != null:
return setPreferredLessons(_that.lessons);case _:
  return null;

}
}

}

/// @nodoc


class _SetInitialData with DiagnosticableTreeMixin implements RoomCreateEvent {
  const _SetInitialData({required this.maxStep});
  

 final  int maxStep;

/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetInitialDataCopyWith<_SetInitialData> get copyWith => __$SetInitialDataCopyWithImpl<_SetInitialData>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateEvent.setInitialData'))
    ..add(DiagnosticsProperty('maxStep', maxStep));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetInitialData&&(identical(other.maxStep, maxStep) || other.maxStep == maxStep));
}


@override
int get hashCode => Object.hash(runtimeType,maxStep);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateEvent.setInitialData(maxStep: $maxStep)';
}


}

/// @nodoc
abstract mixin class _$SetInitialDataCopyWith<$Res> implements $RoomCreateEventCopyWith<$Res> {
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

/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? maxStep = null,}) {
  return _then(_SetInitialData(
maxStep: null == maxStep ? _self.maxStep : maxStep // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _PreviousStep with DiagnosticableTreeMixin implements RoomCreateEvent {
  const _PreviousStep();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateEvent.previousStep'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreviousStep);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateEvent.previousStep()';
}


}




/// @nodoc


class _NextStep with DiagnosticableTreeMixin implements RoomCreateEvent {
  const _NextStep({this.title, this.description, this.duration, final  List<String>? preferredLessons}): _preferredLessons = preferredLessons;
  

 final  String? title;
 final  String? description;
 final  int? duration;
 final  List<String>? _preferredLessons;
 List<String>? get preferredLessons {
  final value = _preferredLessons;
  if (value == null) return null;
  if (_preferredLessons is EqualUnmodifiableListView) return _preferredLessons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NextStepCopyWith<_NextStep> get copyWith => __$NextStepCopyWithImpl<_NextStep>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateEvent.nextStep'))
    ..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('duration', duration))..add(DiagnosticsProperty('preferredLessons', preferredLessons));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextStep&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.duration, duration) || other.duration == duration)&&const DeepCollectionEquality().equals(other._preferredLessons, _preferredLessons));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,duration,const DeepCollectionEquality().hash(_preferredLessons));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateEvent.nextStep(title: $title, description: $description, duration: $duration, preferredLessons: $preferredLessons)';
}


}

/// @nodoc
abstract mixin class _$NextStepCopyWith<$Res> implements $RoomCreateEventCopyWith<$Res> {
  factory _$NextStepCopyWith(_NextStep value, $Res Function(_NextStep) _then) = __$NextStepCopyWithImpl;
@useResult
$Res call({
 String? title, String? description, int? duration, List<String>? preferredLessons
});




}
/// @nodoc
class __$NextStepCopyWithImpl<$Res>
    implements _$NextStepCopyWith<$Res> {
  __$NextStepCopyWithImpl(this._self, this._then);

  final _NextStep _self;
  final $Res Function(_NextStep) _then;

/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? description = freezed,Object? duration = freezed,Object? preferredLessons = freezed,}) {
  return _then(_NextStep(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,preferredLessons: freezed == preferredLessons ? _self._preferredLessons : preferredLessons // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

/// @nodoc


class _CreateRoom with DiagnosticableTreeMixin implements RoomCreateEvent {
  const _CreateRoom();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateEvent.createRoom'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateRoom);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateEvent.createRoom()';
}


}




/// @nodoc


class _SetRoom with DiagnosticableTreeMixin implements RoomCreateEvent {
  const _SetRoom(this.room);
  

 final  RoomModel room;

/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetRoomCopyWith<_SetRoom> get copyWith => __$SetRoomCopyWithImpl<_SetRoom>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateEvent.setRoom'))
    ..add(DiagnosticsProperty('room', room));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetRoom&&(identical(other.room, room) || other.room == room));
}


@override
int get hashCode => Object.hash(runtimeType,room);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateEvent.setRoom(room: $room)';
}


}

/// @nodoc
abstract mixin class _$SetRoomCopyWith<$Res> implements $RoomCreateEventCopyWith<$Res> {
  factory _$SetRoomCopyWith(_SetRoom value, $Res Function(_SetRoom) _then) = __$SetRoomCopyWithImpl;
@useResult
$Res call({
 RoomModel room
});


$RoomModelCopyWith<$Res> get room;

}
/// @nodoc
class __$SetRoomCopyWithImpl<$Res>
    implements _$SetRoomCopyWith<$Res> {
  __$SetRoomCopyWithImpl(this._self, this._then);

  final _SetRoom _self;
  final $Res Function(_SetRoom) _then;

/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? room = null,}) {
  return _then(_SetRoom(
null == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as RoomModel,
  ));
}

/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomModelCopyWith<$Res> get room {
  
  return $RoomModelCopyWith<$Res>(_self.room, (value) {
    return _then(_self.copyWith(room: value));
  });
}
}

/// @nodoc


class _Close with DiagnosticableTreeMixin implements RoomCreateEvent {
  const _Close(this.room);
  

 final  RoomModel room;

/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CloseCopyWith<_Close> get copyWith => __$CloseCopyWithImpl<_Close>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateEvent.close'))
    ..add(DiagnosticsProperty('room', room));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Close&&(identical(other.room, room) || other.room == room));
}


@override
int get hashCode => Object.hash(runtimeType,room);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateEvent.close(room: $room)';
}


}

/// @nodoc
abstract mixin class _$CloseCopyWith<$Res> implements $RoomCreateEventCopyWith<$Res> {
  factory _$CloseCopyWith(_Close value, $Res Function(_Close) _then) = __$CloseCopyWithImpl;
@useResult
$Res call({
 RoomModel room
});


$RoomModelCopyWith<$Res> get room;

}
/// @nodoc
class __$CloseCopyWithImpl<$Res>
    implements _$CloseCopyWith<$Res> {
  __$CloseCopyWithImpl(this._self, this._then);

  final _Close _self;
  final $Res Function(_Close) _then;

/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? room = null,}) {
  return _then(_Close(
null == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as RoomModel,
  ));
}

/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomModelCopyWith<$Res> get room {
  
  return $RoomModelCopyWith<$Res>(_self.room, (value) {
    return _then(_self.copyWith(room: value));
  });
}
}

/// @nodoc


class _ReOpen with DiagnosticableTreeMixin implements RoomCreateEvent {
  const _ReOpen();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateEvent.reOpen'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReOpen);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateEvent.reOpen()';
}


}




/// @nodoc


class _StartLesson with DiagnosticableTreeMixin implements RoomCreateEvent {
  const _StartLesson();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateEvent.startLesson'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartLesson);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateEvent.startLesson()';
}


}




/// @nodoc


class _UpdateEnrollmentsDifficulty with DiagnosticableTreeMixin implements RoomCreateEvent {
  const _UpdateEnrollmentsDifficulty({required this.room, required final  List<StudentEnrollment> enrollments}): _enrollments = enrollments;
  

 final  RoomModel room;
 final  List<StudentEnrollment> _enrollments;
 List<StudentEnrollment> get enrollments {
  if (_enrollments is EqualUnmodifiableListView) return _enrollments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_enrollments);
}


/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateEnrollmentsDifficultyCopyWith<_UpdateEnrollmentsDifficulty> get copyWith => __$UpdateEnrollmentsDifficultyCopyWithImpl<_UpdateEnrollmentsDifficulty>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateEvent.updateEnrollmentsDifficulty'))
    ..add(DiagnosticsProperty('room', room))..add(DiagnosticsProperty('enrollments', enrollments));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateEnrollmentsDifficulty&&(identical(other.room, room) || other.room == room)&&const DeepCollectionEquality().equals(other._enrollments, _enrollments));
}


@override
int get hashCode => Object.hash(runtimeType,room,const DeepCollectionEquality().hash(_enrollments));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateEvent.updateEnrollmentsDifficulty(room: $room, enrollments: $enrollments)';
}


}

/// @nodoc
abstract mixin class _$UpdateEnrollmentsDifficultyCopyWith<$Res> implements $RoomCreateEventCopyWith<$Res> {
  factory _$UpdateEnrollmentsDifficultyCopyWith(_UpdateEnrollmentsDifficulty value, $Res Function(_UpdateEnrollmentsDifficulty) _then) = __$UpdateEnrollmentsDifficultyCopyWithImpl;
@useResult
$Res call({
 RoomModel room, List<StudentEnrollment> enrollments
});


$RoomModelCopyWith<$Res> get room;

}
/// @nodoc
class __$UpdateEnrollmentsDifficultyCopyWithImpl<$Res>
    implements _$UpdateEnrollmentsDifficultyCopyWith<$Res> {
  __$UpdateEnrollmentsDifficultyCopyWithImpl(this._self, this._then);

  final _UpdateEnrollmentsDifficulty _self;
  final $Res Function(_UpdateEnrollmentsDifficulty) _then;

/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? room = null,Object? enrollments = null,}) {
  return _then(_UpdateEnrollmentsDifficulty(
room: null == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as RoomModel,enrollments: null == enrollments ? _self._enrollments : enrollments // ignore: cast_nullable_to_non_nullable
as List<StudentEnrollment>,
  ));
}

/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomModelCopyWith<$Res> get room {
  
  return $RoomModelCopyWith<$Res>(_self.room, (value) {
    return _then(_self.copyWith(room: value));
  });
}
}

/// @nodoc


class _SwitchCloseView with DiagnosticableTreeMixin implements RoomCreateEvent {
  const _SwitchCloseView({this.isDifficultyView = false});
  

@JsonKey() final  bool isDifficultyView;

/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SwitchCloseViewCopyWith<_SwitchCloseView> get copyWith => __$SwitchCloseViewCopyWithImpl<_SwitchCloseView>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateEvent.switchCloseView'))
    ..add(DiagnosticsProperty('isDifficultyView', isDifficultyView));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SwitchCloseView&&(identical(other.isDifficultyView, isDifficultyView) || other.isDifficultyView == isDifficultyView));
}


@override
int get hashCode => Object.hash(runtimeType,isDifficultyView);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateEvent.switchCloseView(isDifficultyView: $isDifficultyView)';
}


}

/// @nodoc
abstract mixin class _$SwitchCloseViewCopyWith<$Res> implements $RoomCreateEventCopyWith<$Res> {
  factory _$SwitchCloseViewCopyWith(_SwitchCloseView value, $Res Function(_SwitchCloseView) _then) = __$SwitchCloseViewCopyWithImpl;
@useResult
$Res call({
 bool isDifficultyView
});




}
/// @nodoc
class __$SwitchCloseViewCopyWithImpl<$Res>
    implements _$SwitchCloseViewCopyWith<$Res> {
  __$SwitchCloseViewCopyWithImpl(this._self, this._then);

  final _SwitchCloseView _self;
  final $Res Function(_SwitchCloseView) _then;

/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isDifficultyView = null,}) {
  return _then(_SwitchCloseView(
isDifficultyView: null == isDifficultyView ? _self.isDifficultyView : isDifficultyView // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _SetPreferredLessons with DiagnosticableTreeMixin implements RoomCreateEvent {
  const _SetPreferredLessons({final  List<String>? lessons}): _lessons = lessons;
  

 final  List<String>? _lessons;
 List<String>? get lessons {
  final value = _lessons;
  if (value == null) return null;
  if (_lessons is EqualUnmodifiableListView) return _lessons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetPreferredLessonsCopyWith<_SetPreferredLessons> get copyWith => __$SetPreferredLessonsCopyWithImpl<_SetPreferredLessons>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateEvent.setPreferredLessons'))
    ..add(DiagnosticsProperty('lessons', lessons));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetPreferredLessons&&const DeepCollectionEquality().equals(other._lessons, _lessons));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lessons));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateEvent.setPreferredLessons(lessons: $lessons)';
}


}

/// @nodoc
abstract mixin class _$SetPreferredLessonsCopyWith<$Res> implements $RoomCreateEventCopyWith<$Res> {
  factory _$SetPreferredLessonsCopyWith(_SetPreferredLessons value, $Res Function(_SetPreferredLessons) _then) = __$SetPreferredLessonsCopyWithImpl;
@useResult
$Res call({
 List<String>? lessons
});




}
/// @nodoc
class __$SetPreferredLessonsCopyWithImpl<$Res>
    implements _$SetPreferredLessonsCopyWith<$Res> {
  __$SetPreferredLessonsCopyWithImpl(this._self, this._then);

  final _SetPreferredLessons _self;
  final $Res Function(_SetPreferredLessons) _then;

/// Create a copy of RoomCreateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lessons = freezed,}) {
  return _then(_SetPreferredLessons(
lessons: freezed == lessons ? _self._lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

/// @nodoc
mixin _$RoomCreateState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomCreateState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateState()';
}


}

/// @nodoc
class $RoomCreateStateCopyWith<$Res>  {
$RoomCreateStateCopyWith(RoomCreateState _, $Res Function(RoomCreateState) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _DoneLoading value)?  doneLoading,TResult Function( _Done value)?  done,TResult Function( _Created value)?  created,TResult Function( _Closed value)?  closed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _DoneLoading() when doneLoading != null:
return doneLoading(_that);case _Done() when done != null:
return done(_that);case _Created() when created != null:
return created(_that);case _Closed() when closed != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _DoneLoading value)  doneLoading,required TResult Function( _Done value)  done,required TResult Function( _Created value)  created,required TResult Function( _Closed value)  closed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _DoneLoading():
return doneLoading(_that);case _Done():
return done(_that);case _Created():
return created(_that);case _Closed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _DoneLoading value)?  doneLoading,TResult? Function( _Done value)?  done,TResult? Function( _Created value)?  created,TResult? Function( _Closed value)?  closed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _DoneLoading() when doneLoading != null:
return doneLoading(_that);case _Done() when done != null:
return done(_that);case _Created() when created != null:
return created(_that);case _Closed() when closed != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( StepperModel<RoomModel> data)?  initial,TResult Function( String? loaderString)?  loading,TResult Function()?  doneLoading,TResult Function( StepperModel<RoomModel> data,  List<LessonModel> lessons)?  done,TResult Function( RoomModel data,  bool refetch)?  created,TResult Function( RoomModel data,  bool refetch,  bool isDifficultyView)?  closed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.data);case _Loading() when loading != null:
return loading(_that.loaderString);case _DoneLoading() when doneLoading != null:
return doneLoading();case _Done() when done != null:
return done(_that.data,_that.lessons);case _Created() when created != null:
return created(_that.data,_that.refetch);case _Closed() when closed != null:
return closed(_that.data,_that.refetch,_that.isDifficultyView);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( StepperModel<RoomModel> data)  initial,required TResult Function( String? loaderString)  loading,required TResult Function()  doneLoading,required TResult Function( StepperModel<RoomModel> data,  List<LessonModel> lessons)  done,required TResult Function( RoomModel data,  bool refetch)  created,required TResult Function( RoomModel data,  bool refetch,  bool isDifficultyView)  closed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.data);case _Loading():
return loading(_that.loaderString);case _DoneLoading():
return doneLoading();case _Done():
return done(_that.data,_that.lessons);case _Created():
return created(_that.data,_that.refetch);case _Closed():
return closed(_that.data,_that.refetch,_that.isDifficultyView);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( StepperModel<RoomModel> data)?  initial,TResult? Function( String? loaderString)?  loading,TResult? Function()?  doneLoading,TResult? Function( StepperModel<RoomModel> data,  List<LessonModel> lessons)?  done,TResult? Function( RoomModel data,  bool refetch)?  created,TResult? Function( RoomModel data,  bool refetch,  bool isDifficultyView)?  closed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.data);case _Loading() when loading != null:
return loading(_that.loaderString);case _DoneLoading() when doneLoading != null:
return doneLoading();case _Done() when done != null:
return done(_that.data,_that.lessons);case _Created() when created != null:
return created(_that.data,_that.refetch);case _Closed() when closed != null:
return closed(_that.data,_that.refetch,_that.isDifficultyView);case _:
  return null;

}
}

}

/// @nodoc


class _Initial with DiagnosticableTreeMixin implements RoomCreateState {
  const _Initial(this.data);
  

 final  StepperModel<RoomModel> data;

/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateState.initial'))
    ..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateState.initial(data: $data)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $RoomCreateStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@useResult
$Res call({
 StepperModel<RoomModel> data
});


$StepperModelCopyWith<RoomModel, $Res> get data;

}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
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

/// @nodoc


class _Loading with DiagnosticableTreeMixin implements RoomCreateState {
  const _Loading({this.loaderString});
  

 final  String? loaderString;

/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingCopyWith<_Loading> get copyWith => __$LoadingCopyWithImpl<_Loading>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateState.loading'))
    ..add(DiagnosticsProperty('loaderString', loaderString));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading&&(identical(other.loaderString, loaderString) || other.loaderString == loaderString));
}


@override
int get hashCode => Object.hash(runtimeType,loaderString);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateState.loading(loaderString: $loaderString)';
}


}

/// @nodoc
abstract mixin class _$LoadingCopyWith<$Res> implements $RoomCreateStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) _then) = __$LoadingCopyWithImpl;
@useResult
$Res call({
 String? loaderString
});




}
/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(this._self, this._then);

  final _Loading _self;
  final $Res Function(_Loading) _then;

/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loaderString = freezed,}) {
  return _then(_Loading(
loaderString: freezed == loaderString ? _self.loaderString : loaderString // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _DoneLoading with DiagnosticableTreeMixin implements RoomCreateState {
  const _DoneLoading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateState.doneLoading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DoneLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateState.doneLoading()';
}


}




/// @nodoc


class _Done with DiagnosticableTreeMixin implements RoomCreateState {
  const _Done(this.data, {final  List<LessonModel> lessons = const []}): _lessons = lessons;
  

 final  StepperModel<RoomModel> data;
 final  List<LessonModel> _lessons;
@JsonKey() List<LessonModel> get lessons {
  if (_lessons is EqualUnmodifiableListView) return _lessons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lessons);
}


/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DoneCopyWith<_Done> get copyWith => __$DoneCopyWithImpl<_Done>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateState.done'))
    ..add(DiagnosticsProperty('data', data))..add(DiagnosticsProperty('lessons', lessons));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Done&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._lessons, _lessons));
}


@override
int get hashCode => Object.hash(runtimeType,data,const DeepCollectionEquality().hash(_lessons));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateState.done(data: $data, lessons: $lessons)';
}


}

/// @nodoc
abstract mixin class _$DoneCopyWith<$Res> implements $RoomCreateStateCopyWith<$Res> {
  factory _$DoneCopyWith(_Done value, $Res Function(_Done) _then) = __$DoneCopyWithImpl;
@useResult
$Res call({
 StepperModel<RoomModel> data, List<LessonModel> lessons
});


$StepperModelCopyWith<RoomModel, $Res> get data;

}
/// @nodoc
class __$DoneCopyWithImpl<$Res>
    implements _$DoneCopyWith<$Res> {
  __$DoneCopyWithImpl(this._self, this._then);

  final _Done _self;
  final $Res Function(_Done) _then;

/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,Object? lessons = null,}) {
  return _then(_Done(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as StepperModel<RoomModel>,lessons: null == lessons ? _self._lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<LessonModel>,
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

/// @nodoc


class _Created with DiagnosticableTreeMixin implements RoomCreateState {
  const _Created(this.data, {this.refetch = false});
  

 final  RoomModel data;
@JsonKey() final  bool refetch;

/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedCopyWith<_Created> get copyWith => __$CreatedCopyWithImpl<_Created>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateState.created'))
    ..add(DiagnosticsProperty('data', data))..add(DiagnosticsProperty('refetch', refetch));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Created&&(identical(other.data, data) || other.data == data)&&(identical(other.refetch, refetch) || other.refetch == refetch));
}


@override
int get hashCode => Object.hash(runtimeType,data,refetch);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateState.created(data: $data, refetch: $refetch)';
}


}

/// @nodoc
abstract mixin class _$CreatedCopyWith<$Res> implements $RoomCreateStateCopyWith<$Res> {
  factory _$CreatedCopyWith(_Created value, $Res Function(_Created) _then) = __$CreatedCopyWithImpl;
@useResult
$Res call({
 RoomModel data, bool refetch
});


$RoomModelCopyWith<$Res> get data;

}
/// @nodoc
class __$CreatedCopyWithImpl<$Res>
    implements _$CreatedCopyWith<$Res> {
  __$CreatedCopyWithImpl(this._self, this._then);

  final _Created _self;
  final $Res Function(_Created) _then;

/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,Object? refetch = null,}) {
  return _then(_Created(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RoomModel,refetch: null == refetch ? _self.refetch : refetch // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomModelCopyWith<$Res> get data {
  
  return $RoomModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _Closed with DiagnosticableTreeMixin implements RoomCreateState {
  const _Closed(this.data, {this.refetch = false, this.isDifficultyView = false});
  

 final  RoomModel data;
@JsonKey() final  bool refetch;
@JsonKey() final  bool isDifficultyView;

/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClosedCopyWith<_Closed> get copyWith => __$ClosedCopyWithImpl<_Closed>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomCreateState.closed'))
    ..add(DiagnosticsProperty('data', data))..add(DiagnosticsProperty('refetch', refetch))..add(DiagnosticsProperty('isDifficultyView', isDifficultyView));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Closed&&(identical(other.data, data) || other.data == data)&&(identical(other.refetch, refetch) || other.refetch == refetch)&&(identical(other.isDifficultyView, isDifficultyView) || other.isDifficultyView == isDifficultyView));
}


@override
int get hashCode => Object.hash(runtimeType,data,refetch,isDifficultyView);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomCreateState.closed(data: $data, refetch: $refetch, isDifficultyView: $isDifficultyView)';
}


}

/// @nodoc
abstract mixin class _$ClosedCopyWith<$Res> implements $RoomCreateStateCopyWith<$Res> {
  factory _$ClosedCopyWith(_Closed value, $Res Function(_Closed) _then) = __$ClosedCopyWithImpl;
@useResult
$Res call({
 RoomModel data, bool refetch, bool isDifficultyView
});


$RoomModelCopyWith<$Res> get data;

}
/// @nodoc
class __$ClosedCopyWithImpl<$Res>
    implements _$ClosedCopyWith<$Res> {
  __$ClosedCopyWithImpl(this._self, this._then);

  final _Closed _self;
  final $Res Function(_Closed) _then;

/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,Object? refetch = null,Object? isDifficultyView = null,}) {
  return _then(_Closed(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RoomModel,refetch: null == refetch ? _self.refetch : refetch // ignore: cast_nullable_to_non_nullable
as bool,isDifficultyView: null == isDifficultyView ? _self.isDifficultyView : isDifficultyView // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of RoomCreateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomModelCopyWith<$Res> get data {
  
  return $RoomModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
