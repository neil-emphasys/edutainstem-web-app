// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoomModel implements DiagnosticableTreeMixin {

@JsonKey(includeFromJson: true, includeToJson: false) String? get id; bool get isAssessmentOpen; bool get isOpen;@JsonKey(includeIfNull: false) bool get isLessonOpen; String get roomCode; String get title; String get description; int get duration; List<String> get preferredLessons;
/// Create a copy of RoomModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomModelCopyWith<RoomModel> get copyWith => _$RoomModelCopyWithImpl<RoomModel>(this as RoomModel, _$identity);

  /// Serializes this RoomModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('isAssessmentOpen', isAssessmentOpen))..add(DiagnosticsProperty('isOpen', isOpen))..add(DiagnosticsProperty('isLessonOpen', isLessonOpen))..add(DiagnosticsProperty('roomCode', roomCode))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('duration', duration))..add(DiagnosticsProperty('preferredLessons', preferredLessons));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomModel&&(identical(other.id, id) || other.id == id)&&(identical(other.isAssessmentOpen, isAssessmentOpen) || other.isAssessmentOpen == isAssessmentOpen)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.isLessonOpen, isLessonOpen) || other.isLessonOpen == isLessonOpen)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.duration, duration) || other.duration == duration)&&const DeepCollectionEquality().equals(other.preferredLessons, preferredLessons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isAssessmentOpen,isOpen,isLessonOpen,roomCode,title,description,duration,const DeepCollectionEquality().hash(preferredLessons));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomModel(id: $id, isAssessmentOpen: $isAssessmentOpen, isOpen: $isOpen, isLessonOpen: $isLessonOpen, roomCode: $roomCode, title: $title, description: $description, duration: $duration, preferredLessons: $preferredLessons)';
}


}

/// @nodoc
abstract mixin class $RoomModelCopyWith<$Res>  {
  factory $RoomModelCopyWith(RoomModel value, $Res Function(RoomModel) _then) = _$RoomModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeFromJson: true, includeToJson: false) String? id, bool isAssessmentOpen, bool isOpen,@JsonKey(includeIfNull: false) bool isLessonOpen, String roomCode, String title, String description, int duration, List<String> preferredLessons
});




}
/// @nodoc
class _$RoomModelCopyWithImpl<$Res>
    implements $RoomModelCopyWith<$Res> {
  _$RoomModelCopyWithImpl(this._self, this._then);

  final RoomModel _self;
  final $Res Function(RoomModel) _then;

/// Create a copy of RoomModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? isAssessmentOpen = null,Object? isOpen = null,Object? isLessonOpen = null,Object? roomCode = null,Object? title = null,Object? description = null,Object? duration = null,Object? preferredLessons = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,isAssessmentOpen: null == isAssessmentOpen ? _self.isAssessmentOpen : isAssessmentOpen // ignore: cast_nullable_to_non_nullable
as bool,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,isLessonOpen: null == isLessonOpen ? _self.isLessonOpen : isLessonOpen // ignore: cast_nullable_to_non_nullable
as bool,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,preferredLessons: null == preferredLessons ? _self.preferredLessons : preferredLessons // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomModel].
extension RoomModelPatterns on RoomModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomModel value)  $default,){
final _that = this;
switch (_that) {
case _RoomModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomModel value)?  $default,){
final _that = this;
switch (_that) {
case _RoomModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeFromJson: true, includeToJson: false)  String? id,  bool isAssessmentOpen,  bool isOpen, @JsonKey(includeIfNull: false)  bool isLessonOpen,  String roomCode,  String title,  String description,  int duration,  List<String> preferredLessons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomModel() when $default != null:
return $default(_that.id,_that.isAssessmentOpen,_that.isOpen,_that.isLessonOpen,_that.roomCode,_that.title,_that.description,_that.duration,_that.preferredLessons);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeFromJson: true, includeToJson: false)  String? id,  bool isAssessmentOpen,  bool isOpen, @JsonKey(includeIfNull: false)  bool isLessonOpen,  String roomCode,  String title,  String description,  int duration,  List<String> preferredLessons)  $default,) {final _that = this;
switch (_that) {
case _RoomModel():
return $default(_that.id,_that.isAssessmentOpen,_that.isOpen,_that.isLessonOpen,_that.roomCode,_that.title,_that.description,_that.duration,_that.preferredLessons);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeFromJson: true, includeToJson: false)  String? id,  bool isAssessmentOpen,  bool isOpen, @JsonKey(includeIfNull: false)  bool isLessonOpen,  String roomCode,  String title,  String description,  int duration,  List<String> preferredLessons)?  $default,) {final _that = this;
switch (_that) {
case _RoomModel() when $default != null:
return $default(_that.id,_that.isAssessmentOpen,_that.isOpen,_that.isLessonOpen,_that.roomCode,_that.title,_that.description,_that.duration,_that.preferredLessons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoomModel with DiagnosticableTreeMixin implements RoomModel {
  const _RoomModel({@JsonKey(includeFromJson: true, includeToJson: false) this.id, required this.isAssessmentOpen, required this.isOpen, @JsonKey(includeIfNull: false) required this.isLessonOpen, required this.roomCode, required this.title, required this.description, required this.duration, required final  List<String> preferredLessons}): _preferredLessons = preferredLessons;
  factory _RoomModel.fromJson(Map<String, dynamic> json) => _$RoomModelFromJson(json);

@override@JsonKey(includeFromJson: true, includeToJson: false) final  String? id;
@override final  bool isAssessmentOpen;
@override final  bool isOpen;
@override@JsonKey(includeIfNull: false) final  bool isLessonOpen;
@override final  String roomCode;
@override final  String title;
@override final  String description;
@override final  int duration;
 final  List<String> _preferredLessons;
@override List<String> get preferredLessons {
  if (_preferredLessons is EqualUnmodifiableListView) return _preferredLessons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_preferredLessons);
}


/// Create a copy of RoomModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomModelCopyWith<_RoomModel> get copyWith => __$RoomModelCopyWithImpl<_RoomModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoomModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RoomModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('isAssessmentOpen', isAssessmentOpen))..add(DiagnosticsProperty('isOpen', isOpen))..add(DiagnosticsProperty('isLessonOpen', isLessonOpen))..add(DiagnosticsProperty('roomCode', roomCode))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('duration', duration))..add(DiagnosticsProperty('preferredLessons', preferredLessons));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomModel&&(identical(other.id, id) || other.id == id)&&(identical(other.isAssessmentOpen, isAssessmentOpen) || other.isAssessmentOpen == isAssessmentOpen)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.isLessonOpen, isLessonOpen) || other.isLessonOpen == isLessonOpen)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.duration, duration) || other.duration == duration)&&const DeepCollectionEquality().equals(other._preferredLessons, _preferredLessons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isAssessmentOpen,isOpen,isLessonOpen,roomCode,title,description,duration,const DeepCollectionEquality().hash(_preferredLessons));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RoomModel(id: $id, isAssessmentOpen: $isAssessmentOpen, isOpen: $isOpen, isLessonOpen: $isLessonOpen, roomCode: $roomCode, title: $title, description: $description, duration: $duration, preferredLessons: $preferredLessons)';
}


}

/// @nodoc
abstract mixin class _$RoomModelCopyWith<$Res> implements $RoomModelCopyWith<$Res> {
  factory _$RoomModelCopyWith(_RoomModel value, $Res Function(_RoomModel) _then) = __$RoomModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeFromJson: true, includeToJson: false) String? id, bool isAssessmentOpen, bool isOpen,@JsonKey(includeIfNull: false) bool isLessonOpen, String roomCode, String title, String description, int duration, List<String> preferredLessons
});




}
/// @nodoc
class __$RoomModelCopyWithImpl<$Res>
    implements _$RoomModelCopyWith<$Res> {
  __$RoomModelCopyWithImpl(this._self, this._then);

  final _RoomModel _self;
  final $Res Function(_RoomModel) _then;

/// Create a copy of RoomModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? isAssessmentOpen = null,Object? isOpen = null,Object? isLessonOpen = null,Object? roomCode = null,Object? title = null,Object? description = null,Object? duration = null,Object? preferredLessons = null,}) {
  return _then(_RoomModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,isAssessmentOpen: null == isAssessmentOpen ? _self.isAssessmentOpen : isAssessmentOpen // ignore: cast_nullable_to_non_nullable
as bool,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,isLessonOpen: null == isLessonOpen ? _self.isLessonOpen : isLessonOpen // ignore: cast_nullable_to_non_nullable
as bool,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,preferredLessons: null == preferredLessons ? _self._preferredLessons : preferredLessons // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$AssessmentAnswer implements DiagnosticableTreeMixin {

 String get qid;@JsonKey(name: 'answerIndex') String get answerIndex;
/// Create a copy of AssessmentAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssessmentAnswerCopyWith<AssessmentAnswer> get copyWith => _$AssessmentAnswerCopyWithImpl<AssessmentAnswer>(this as AssessmentAnswer, _$identity);

  /// Serializes this AssessmentAnswer to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AssessmentAnswer'))
    ..add(DiagnosticsProperty('qid', qid))..add(DiagnosticsProperty('answerIndex', answerIndex));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssessmentAnswer&&(identical(other.qid, qid) || other.qid == qid)&&(identical(other.answerIndex, answerIndex) || other.answerIndex == answerIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qid,answerIndex);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AssessmentAnswer(qid: $qid, answerIndex: $answerIndex)';
}


}

/// @nodoc
abstract mixin class $AssessmentAnswerCopyWith<$Res>  {
  factory $AssessmentAnswerCopyWith(AssessmentAnswer value, $Res Function(AssessmentAnswer) _then) = _$AssessmentAnswerCopyWithImpl;
@useResult
$Res call({
 String qid,@JsonKey(name: 'answerIndex') String answerIndex
});




}
/// @nodoc
class _$AssessmentAnswerCopyWithImpl<$Res>
    implements $AssessmentAnswerCopyWith<$Res> {
  _$AssessmentAnswerCopyWithImpl(this._self, this._then);

  final AssessmentAnswer _self;
  final $Res Function(AssessmentAnswer) _then;

/// Create a copy of AssessmentAnswer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? qid = null,Object? answerIndex = null,}) {
  return _then(_self.copyWith(
qid: null == qid ? _self.qid : qid // ignore: cast_nullable_to_non_nullable
as String,answerIndex: null == answerIndex ? _self.answerIndex : answerIndex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AssessmentAnswer].
extension AssessmentAnswerPatterns on AssessmentAnswer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssessmentAnswer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssessmentAnswer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssessmentAnswer value)  $default,){
final _that = this;
switch (_that) {
case _AssessmentAnswer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssessmentAnswer value)?  $default,){
final _that = this;
switch (_that) {
case _AssessmentAnswer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String qid, @JsonKey(name: 'answerIndex')  String answerIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssessmentAnswer() when $default != null:
return $default(_that.qid,_that.answerIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String qid, @JsonKey(name: 'answerIndex')  String answerIndex)  $default,) {final _that = this;
switch (_that) {
case _AssessmentAnswer():
return $default(_that.qid,_that.answerIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String qid, @JsonKey(name: 'answerIndex')  String answerIndex)?  $default,) {final _that = this;
switch (_that) {
case _AssessmentAnswer() when $default != null:
return $default(_that.qid,_that.answerIndex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssessmentAnswer with DiagnosticableTreeMixin implements AssessmentAnswer {
  const _AssessmentAnswer({required this.qid, @JsonKey(name: 'answerIndex') required this.answerIndex});
  factory _AssessmentAnswer.fromJson(Map<String, dynamic> json) => _$AssessmentAnswerFromJson(json);

@override final  String qid;
@override@JsonKey(name: 'answerIndex') final  String answerIndex;

/// Create a copy of AssessmentAnswer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssessmentAnswerCopyWith<_AssessmentAnswer> get copyWith => __$AssessmentAnswerCopyWithImpl<_AssessmentAnswer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssessmentAnswerToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AssessmentAnswer'))
    ..add(DiagnosticsProperty('qid', qid))..add(DiagnosticsProperty('answerIndex', answerIndex));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssessmentAnswer&&(identical(other.qid, qid) || other.qid == qid)&&(identical(other.answerIndex, answerIndex) || other.answerIndex == answerIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qid,answerIndex);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AssessmentAnswer(qid: $qid, answerIndex: $answerIndex)';
}


}

/// @nodoc
abstract mixin class _$AssessmentAnswerCopyWith<$Res> implements $AssessmentAnswerCopyWith<$Res> {
  factory _$AssessmentAnswerCopyWith(_AssessmentAnswer value, $Res Function(_AssessmentAnswer) _then) = __$AssessmentAnswerCopyWithImpl;
@override @useResult
$Res call({
 String qid,@JsonKey(name: 'answerIndex') String answerIndex
});




}
/// @nodoc
class __$AssessmentAnswerCopyWithImpl<$Res>
    implements _$AssessmentAnswerCopyWith<$Res> {
  __$AssessmentAnswerCopyWithImpl(this._self, this._then);

  final _AssessmentAnswer _self;
  final $Res Function(_AssessmentAnswer) _then;

/// Create a copy of AssessmentAnswer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? qid = null,Object? answerIndex = null,}) {
  return _then(_AssessmentAnswer(
qid: null == qid ? _self.qid : qid // ignore: cast_nullable_to_non_nullable
as String,answerIndex: null == answerIndex ? _self.answerIndex : answerIndex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$StudentEnrollment implements DiagnosticableTreeMixin {

 String get uid; String get name;@JsonKey(includeIfNull: true) String? get difficulty; List<AssessmentAnswer> get assessment;
/// Create a copy of StudentEnrollment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentEnrollmentCopyWith<StudentEnrollment> get copyWith => _$StudentEnrollmentCopyWithImpl<StudentEnrollment>(this as StudentEnrollment, _$identity);

  /// Serializes this StudentEnrollment to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentEnrollment'))
    ..add(DiagnosticsProperty('uid', uid))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('difficulty', difficulty))..add(DiagnosticsProperty('assessment', assessment));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentEnrollment&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&const DeepCollectionEquality().equals(other.assessment, assessment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,name,difficulty,const DeepCollectionEquality().hash(assessment));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentEnrollment(uid: $uid, name: $name, difficulty: $difficulty, assessment: $assessment)';
}


}

/// @nodoc
abstract mixin class $StudentEnrollmentCopyWith<$Res>  {
  factory $StudentEnrollmentCopyWith(StudentEnrollment value, $Res Function(StudentEnrollment) _then) = _$StudentEnrollmentCopyWithImpl;
@useResult
$Res call({
 String uid, String name,@JsonKey(includeIfNull: true) String? difficulty, List<AssessmentAnswer> assessment
});




}
/// @nodoc
class _$StudentEnrollmentCopyWithImpl<$Res>
    implements $StudentEnrollmentCopyWith<$Res> {
  _$StudentEnrollmentCopyWithImpl(this._self, this._then);

  final StudentEnrollment _self;
  final $Res Function(StudentEnrollment) _then;

/// Create a copy of StudentEnrollment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? name = null,Object? difficulty = freezed,Object? assessment = null,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,assessment: null == assessment ? _self.assessment : assessment // ignore: cast_nullable_to_non_nullable
as List<AssessmentAnswer>,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentEnrollment].
extension StudentEnrollmentPatterns on StudentEnrollment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentEnrollment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentEnrollment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentEnrollment value)  $default,){
final _that = this;
switch (_that) {
case _StudentEnrollment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentEnrollment value)?  $default,){
final _that = this;
switch (_that) {
case _StudentEnrollment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String name, @JsonKey(includeIfNull: true)  String? difficulty,  List<AssessmentAnswer> assessment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentEnrollment() when $default != null:
return $default(_that.uid,_that.name,_that.difficulty,_that.assessment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String name, @JsonKey(includeIfNull: true)  String? difficulty,  List<AssessmentAnswer> assessment)  $default,) {final _that = this;
switch (_that) {
case _StudentEnrollment():
return $default(_that.uid,_that.name,_that.difficulty,_that.assessment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String name, @JsonKey(includeIfNull: true)  String? difficulty,  List<AssessmentAnswer> assessment)?  $default,) {final _that = this;
switch (_that) {
case _StudentEnrollment() when $default != null:
return $default(_that.uid,_that.name,_that.difficulty,_that.assessment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentEnrollment with DiagnosticableTreeMixin implements StudentEnrollment {
  const _StudentEnrollment({required this.uid, this.name = '', @JsonKey(includeIfNull: true) this.difficulty, final  List<AssessmentAnswer> assessment = const <AssessmentAnswer>[]}): _assessment = assessment;
  factory _StudentEnrollment.fromJson(Map<String, dynamic> json) => _$StudentEnrollmentFromJson(json);

@override final  String uid;
@override@JsonKey() final  String name;
@override@JsonKey(includeIfNull: true) final  String? difficulty;
 final  List<AssessmentAnswer> _assessment;
@override@JsonKey() List<AssessmentAnswer> get assessment {
  if (_assessment is EqualUnmodifiableListView) return _assessment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assessment);
}


/// Create a copy of StudentEnrollment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentEnrollmentCopyWith<_StudentEnrollment> get copyWith => __$StudentEnrollmentCopyWithImpl<_StudentEnrollment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentEnrollmentToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentEnrollment'))
    ..add(DiagnosticsProperty('uid', uid))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('difficulty', difficulty))..add(DiagnosticsProperty('assessment', assessment));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentEnrollment&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&const DeepCollectionEquality().equals(other._assessment, _assessment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,name,difficulty,const DeepCollectionEquality().hash(_assessment));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentEnrollment(uid: $uid, name: $name, difficulty: $difficulty, assessment: $assessment)';
}


}

/// @nodoc
abstract mixin class _$StudentEnrollmentCopyWith<$Res> implements $StudentEnrollmentCopyWith<$Res> {
  factory _$StudentEnrollmentCopyWith(_StudentEnrollment value, $Res Function(_StudentEnrollment) _then) = __$StudentEnrollmentCopyWithImpl;
@override @useResult
$Res call({
 String uid, String name,@JsonKey(includeIfNull: true) String? difficulty, List<AssessmentAnswer> assessment
});




}
/// @nodoc
class __$StudentEnrollmentCopyWithImpl<$Res>
    implements _$StudentEnrollmentCopyWith<$Res> {
  __$StudentEnrollmentCopyWithImpl(this._self, this._then);

  final _StudentEnrollment _self;
  final $Res Function(_StudentEnrollment) _then;

/// Create a copy of StudentEnrollment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? name = null,Object? difficulty = freezed,Object? assessment = null,}) {
  return _then(_StudentEnrollment(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,assessment: null == assessment ? _self._assessment : assessment // ignore: cast_nullable_to_non_nullable
as List<AssessmentAnswer>,
  ));
}


}

// dart format on
