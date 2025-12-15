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
mixin _$RoomModel {

@JsonKey(includeFromJson: true, includeToJson: false) String? get id; bool get isAssessmentOpen; bool get isOpen;@JsonKey(includeIfNull: false) bool get isLessonOpen; String get roomCode; String get title; String get description; String get createdById; String get createdByName; int get duration; List<String> get preferredLessons;/// Accepts either:
/// 1) Map<String, StudentEnrollmentModel>
/// 2) List<Map<String, StudentEnrollmentModel>>  (like your sample)
@StudentsEnrolledConverter() Map<String, StudentEnrollmentModel> get studentsEnrolled;
/// Create a copy of RoomModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomModelCopyWith<RoomModel> get copyWith => _$RoomModelCopyWithImpl<RoomModel>(this as RoomModel, _$identity);

  /// Serializes this RoomModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomModel&&(identical(other.id, id) || other.id == id)&&(identical(other.isAssessmentOpen, isAssessmentOpen) || other.isAssessmentOpen == isAssessmentOpen)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.isLessonOpen, isLessonOpen) || other.isLessonOpen == isLessonOpen)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.createdByName, createdByName) || other.createdByName == createdByName)&&(identical(other.duration, duration) || other.duration == duration)&&const DeepCollectionEquality().equals(other.preferredLessons, preferredLessons)&&const DeepCollectionEquality().equals(other.studentsEnrolled, studentsEnrolled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isAssessmentOpen,isOpen,isLessonOpen,roomCode,title,description,createdById,createdByName,duration,const DeepCollectionEquality().hash(preferredLessons),const DeepCollectionEquality().hash(studentsEnrolled));

@override
String toString() {
  return 'RoomModel(id: $id, isAssessmentOpen: $isAssessmentOpen, isOpen: $isOpen, isLessonOpen: $isLessonOpen, roomCode: $roomCode, title: $title, description: $description, createdById: $createdById, createdByName: $createdByName, duration: $duration, preferredLessons: $preferredLessons, studentsEnrolled: $studentsEnrolled)';
}


}

/// @nodoc
abstract mixin class $RoomModelCopyWith<$Res>  {
  factory $RoomModelCopyWith(RoomModel value, $Res Function(RoomModel) _then) = _$RoomModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeFromJson: true, includeToJson: false) String? id, bool isAssessmentOpen, bool isOpen,@JsonKey(includeIfNull: false) bool isLessonOpen, String roomCode, String title, String description, String createdById, String createdByName, int duration, List<String> preferredLessons,@StudentsEnrolledConverter() Map<String, StudentEnrollmentModel> studentsEnrolled
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? isAssessmentOpen = null,Object? isOpen = null,Object? isLessonOpen = null,Object? roomCode = null,Object? title = null,Object? description = null,Object? createdById = null,Object? createdByName = null,Object? duration = null,Object? preferredLessons = null,Object? studentsEnrolled = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,isAssessmentOpen: null == isAssessmentOpen ? _self.isAssessmentOpen : isAssessmentOpen // ignore: cast_nullable_to_non_nullable
as bool,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,isLessonOpen: null == isLessonOpen ? _self.isLessonOpen : isLessonOpen // ignore: cast_nullable_to_non_nullable
as bool,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdById: null == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String,createdByName: null == createdByName ? _self.createdByName : createdByName // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,preferredLessons: null == preferredLessons ? _self.preferredLessons : preferredLessons // ignore: cast_nullable_to_non_nullable
as List<String>,studentsEnrolled: null == studentsEnrolled ? _self.studentsEnrolled : studentsEnrolled // ignore: cast_nullable_to_non_nullable
as Map<String, StudentEnrollmentModel>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeFromJson: true, includeToJson: false)  String? id,  bool isAssessmentOpen,  bool isOpen, @JsonKey(includeIfNull: false)  bool isLessonOpen,  String roomCode,  String title,  String description,  String createdById,  String createdByName,  int duration,  List<String> preferredLessons, @StudentsEnrolledConverter()  Map<String, StudentEnrollmentModel> studentsEnrolled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomModel() when $default != null:
return $default(_that.id,_that.isAssessmentOpen,_that.isOpen,_that.isLessonOpen,_that.roomCode,_that.title,_that.description,_that.createdById,_that.createdByName,_that.duration,_that.preferredLessons,_that.studentsEnrolled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeFromJson: true, includeToJson: false)  String? id,  bool isAssessmentOpen,  bool isOpen, @JsonKey(includeIfNull: false)  bool isLessonOpen,  String roomCode,  String title,  String description,  String createdById,  String createdByName,  int duration,  List<String> preferredLessons, @StudentsEnrolledConverter()  Map<String, StudentEnrollmentModel> studentsEnrolled)  $default,) {final _that = this;
switch (_that) {
case _RoomModel():
return $default(_that.id,_that.isAssessmentOpen,_that.isOpen,_that.isLessonOpen,_that.roomCode,_that.title,_that.description,_that.createdById,_that.createdByName,_that.duration,_that.preferredLessons,_that.studentsEnrolled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeFromJson: true, includeToJson: false)  String? id,  bool isAssessmentOpen,  bool isOpen, @JsonKey(includeIfNull: false)  bool isLessonOpen,  String roomCode,  String title,  String description,  String createdById,  String createdByName,  int duration,  List<String> preferredLessons, @StudentsEnrolledConverter()  Map<String, StudentEnrollmentModel> studentsEnrolled)?  $default,) {final _that = this;
switch (_that) {
case _RoomModel() when $default != null:
return $default(_that.id,_that.isAssessmentOpen,_that.isOpen,_that.isLessonOpen,_that.roomCode,_that.title,_that.description,_that.createdById,_that.createdByName,_that.duration,_that.preferredLessons,_that.studentsEnrolled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoomModel implements RoomModel {
  const _RoomModel({@JsonKey(includeFromJson: true, includeToJson: false) this.id, required this.isAssessmentOpen, required this.isOpen, @JsonKey(includeIfNull: false) required this.isLessonOpen, required this.roomCode, required this.title, required this.description, required this.createdById, required this.createdByName, required this.duration, required final  List<String> preferredLessons, @StudentsEnrolledConverter() final  Map<String, StudentEnrollmentModel> studentsEnrolled = const <String, StudentEnrollmentModel>{}}): _preferredLessons = preferredLessons,_studentsEnrolled = studentsEnrolled;
  factory _RoomModel.fromJson(Map<String, dynamic> json) => _$RoomModelFromJson(json);

@override@JsonKey(includeFromJson: true, includeToJson: false) final  String? id;
@override final  bool isAssessmentOpen;
@override final  bool isOpen;
@override@JsonKey(includeIfNull: false) final  bool isLessonOpen;
@override final  String roomCode;
@override final  String title;
@override final  String description;
@override final  String createdById;
@override final  String createdByName;
@override final  int duration;
 final  List<String> _preferredLessons;
@override List<String> get preferredLessons {
  if (_preferredLessons is EqualUnmodifiableListView) return _preferredLessons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_preferredLessons);
}

/// Accepts either:
/// 1) Map<String, StudentEnrollmentModel>
/// 2) List<Map<String, StudentEnrollmentModel>>  (like your sample)
 final  Map<String, StudentEnrollmentModel> _studentsEnrolled;
/// Accepts either:
/// 1) Map<String, StudentEnrollmentModel>
/// 2) List<Map<String, StudentEnrollmentModel>>  (like your sample)
@override@JsonKey()@StudentsEnrolledConverter() Map<String, StudentEnrollmentModel> get studentsEnrolled {
  if (_studentsEnrolled is EqualUnmodifiableMapView) return _studentsEnrolled;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_studentsEnrolled);
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
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomModel&&(identical(other.id, id) || other.id == id)&&(identical(other.isAssessmentOpen, isAssessmentOpen) || other.isAssessmentOpen == isAssessmentOpen)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.isLessonOpen, isLessonOpen) || other.isLessonOpen == isLessonOpen)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.createdByName, createdByName) || other.createdByName == createdByName)&&(identical(other.duration, duration) || other.duration == duration)&&const DeepCollectionEquality().equals(other._preferredLessons, _preferredLessons)&&const DeepCollectionEquality().equals(other._studentsEnrolled, _studentsEnrolled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isAssessmentOpen,isOpen,isLessonOpen,roomCode,title,description,createdById,createdByName,duration,const DeepCollectionEquality().hash(_preferredLessons),const DeepCollectionEquality().hash(_studentsEnrolled));

@override
String toString() {
  return 'RoomModel(id: $id, isAssessmentOpen: $isAssessmentOpen, isOpen: $isOpen, isLessonOpen: $isLessonOpen, roomCode: $roomCode, title: $title, description: $description, createdById: $createdById, createdByName: $createdByName, duration: $duration, preferredLessons: $preferredLessons, studentsEnrolled: $studentsEnrolled)';
}


}

/// @nodoc
abstract mixin class _$RoomModelCopyWith<$Res> implements $RoomModelCopyWith<$Res> {
  factory _$RoomModelCopyWith(_RoomModel value, $Res Function(_RoomModel) _then) = __$RoomModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeFromJson: true, includeToJson: false) String? id, bool isAssessmentOpen, bool isOpen,@JsonKey(includeIfNull: false) bool isLessonOpen, String roomCode, String title, String description, String createdById, String createdByName, int duration, List<String> preferredLessons,@StudentsEnrolledConverter() Map<String, StudentEnrollmentModel> studentsEnrolled
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? isAssessmentOpen = null,Object? isOpen = null,Object? isLessonOpen = null,Object? roomCode = null,Object? title = null,Object? description = null,Object? createdById = null,Object? createdByName = null,Object? duration = null,Object? preferredLessons = null,Object? studentsEnrolled = null,}) {
  return _then(_RoomModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,isAssessmentOpen: null == isAssessmentOpen ? _self.isAssessmentOpen : isAssessmentOpen // ignore: cast_nullable_to_non_nullable
as bool,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,isLessonOpen: null == isLessonOpen ? _self.isLessonOpen : isLessonOpen // ignore: cast_nullable_to_non_nullable
as bool,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdById: null == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String,createdByName: null == createdByName ? _self.createdByName : createdByName // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,preferredLessons: null == preferredLessons ? _self._preferredLessons : preferredLessons // ignore: cast_nullable_to_non_nullable
as List<String>,studentsEnrolled: null == studentsEnrolled ? _self._studentsEnrolled : studentsEnrolled // ignore: cast_nullable_to_non_nullable
as Map<String, StudentEnrollmentModel>,
  ));
}


}


/// @nodoc
mixin _$StudentEnrollmentModel {

@JsonKey(unknownEnumValue: DifficultyEnum.basic) DifficultyEnum get difficulty; String get name; List<ExamEntryModel> get examination; List<AssessmentEntryModel> get assessment;
/// Create a copy of StudentEnrollmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentEnrollmentModelCopyWith<StudentEnrollmentModel> get copyWith => _$StudentEnrollmentModelCopyWithImpl<StudentEnrollmentModel>(this as StudentEnrollmentModel, _$identity);

  /// Serializes this StudentEnrollmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentEnrollmentModel&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.examination, examination)&&const DeepCollectionEquality().equals(other.assessment, assessment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,difficulty,name,const DeepCollectionEquality().hash(examination),const DeepCollectionEquality().hash(assessment));

@override
String toString() {
  return 'StudentEnrollmentModel(difficulty: $difficulty, name: $name, examination: $examination, assessment: $assessment)';
}


}

/// @nodoc
abstract mixin class $StudentEnrollmentModelCopyWith<$Res>  {
  factory $StudentEnrollmentModelCopyWith(StudentEnrollmentModel value, $Res Function(StudentEnrollmentModel) _then) = _$StudentEnrollmentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: DifficultyEnum.basic) DifficultyEnum difficulty, String name, List<ExamEntryModel> examination, List<AssessmentEntryModel> assessment
});




}
/// @nodoc
class _$StudentEnrollmentModelCopyWithImpl<$Res>
    implements $StudentEnrollmentModelCopyWith<$Res> {
  _$StudentEnrollmentModelCopyWithImpl(this._self, this._then);

  final StudentEnrollmentModel _self;
  final $Res Function(StudentEnrollmentModel) _then;

/// Create a copy of StudentEnrollmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? difficulty = null,Object? name = null,Object? examination = null,Object? assessment = null,}) {
  return _then(_self.copyWith(
difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as DifficultyEnum,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,examination: null == examination ? _self.examination : examination // ignore: cast_nullable_to_non_nullable
as List<ExamEntryModel>,assessment: null == assessment ? _self.assessment : assessment // ignore: cast_nullable_to_non_nullable
as List<AssessmentEntryModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentEnrollmentModel].
extension StudentEnrollmentModelPatterns on StudentEnrollmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentEnrollmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentEnrollmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentEnrollmentModel value)  $default,){
final _that = this;
switch (_that) {
case _StudentEnrollmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentEnrollmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _StudentEnrollmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: DifficultyEnum.basic)  DifficultyEnum difficulty,  String name,  List<ExamEntryModel> examination,  List<AssessmentEntryModel> assessment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentEnrollmentModel() when $default != null:
return $default(_that.difficulty,_that.name,_that.examination,_that.assessment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: DifficultyEnum.basic)  DifficultyEnum difficulty,  String name,  List<ExamEntryModel> examination,  List<AssessmentEntryModel> assessment)  $default,) {final _that = this;
switch (_that) {
case _StudentEnrollmentModel():
return $default(_that.difficulty,_that.name,_that.examination,_that.assessment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(unknownEnumValue: DifficultyEnum.basic)  DifficultyEnum difficulty,  String name,  List<ExamEntryModel> examination,  List<AssessmentEntryModel> assessment)?  $default,) {final _that = this;
switch (_that) {
case _StudentEnrollmentModel() when $default != null:
return $default(_that.difficulty,_that.name,_that.examination,_that.assessment);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _StudentEnrollmentModel implements StudentEnrollmentModel {
  const _StudentEnrollmentModel({@JsonKey(unknownEnumValue: DifficultyEnum.basic) this.difficulty = DifficultyEnum.basic, this.name = '', final  List<ExamEntryModel> examination = const <ExamEntryModel>[], final  List<AssessmentEntryModel> assessment = const <AssessmentEntryModel>[]}): _examination = examination,_assessment = assessment;
  factory _StudentEnrollmentModel.fromJson(Map<String, dynamic> json) => _$StudentEnrollmentModelFromJson(json);

@override@JsonKey(unknownEnumValue: DifficultyEnum.basic) final  DifficultyEnum difficulty;
@override@JsonKey() final  String name;
 final  List<ExamEntryModel> _examination;
@override@JsonKey() List<ExamEntryModel> get examination {
  if (_examination is EqualUnmodifiableListView) return _examination;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_examination);
}

 final  List<AssessmentEntryModel> _assessment;
@override@JsonKey() List<AssessmentEntryModel> get assessment {
  if (_assessment is EqualUnmodifiableListView) return _assessment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assessment);
}


/// Create a copy of StudentEnrollmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentEnrollmentModelCopyWith<_StudentEnrollmentModel> get copyWith => __$StudentEnrollmentModelCopyWithImpl<_StudentEnrollmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentEnrollmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentEnrollmentModel&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._examination, _examination)&&const DeepCollectionEquality().equals(other._assessment, _assessment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,difficulty,name,const DeepCollectionEquality().hash(_examination),const DeepCollectionEquality().hash(_assessment));

@override
String toString() {
  return 'StudentEnrollmentModel(difficulty: $difficulty, name: $name, examination: $examination, assessment: $assessment)';
}


}

/// @nodoc
abstract mixin class _$StudentEnrollmentModelCopyWith<$Res> implements $StudentEnrollmentModelCopyWith<$Res> {
  factory _$StudentEnrollmentModelCopyWith(_StudentEnrollmentModel value, $Res Function(_StudentEnrollmentModel) _then) = __$StudentEnrollmentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: DifficultyEnum.basic) DifficultyEnum difficulty, String name, List<ExamEntryModel> examination, List<AssessmentEntryModel> assessment
});




}
/// @nodoc
class __$StudentEnrollmentModelCopyWithImpl<$Res>
    implements _$StudentEnrollmentModelCopyWith<$Res> {
  __$StudentEnrollmentModelCopyWithImpl(this._self, this._then);

  final _StudentEnrollmentModel _self;
  final $Res Function(_StudentEnrollmentModel) _then;

/// Create a copy of StudentEnrollmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? difficulty = null,Object? name = null,Object? examination = null,Object? assessment = null,}) {
  return _then(_StudentEnrollmentModel(
difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as DifficultyEnum,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,examination: null == examination ? _self._examination : examination // ignore: cast_nullable_to_non_nullable
as List<ExamEntryModel>,assessment: null == assessment ? _self._assessment : assessment // ignore: cast_nullable_to_non_nullable
as List<AssessmentEntryModel>,
  ));
}


}


/// @nodoc
mixin _$ExamEntryModel {

 String get qid; String get lid; AnswerModel get answer;
/// Create a copy of ExamEntryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamEntryModelCopyWith<ExamEntryModel> get copyWith => _$ExamEntryModelCopyWithImpl<ExamEntryModel>(this as ExamEntryModel, _$identity);

  /// Serializes this ExamEntryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamEntryModel&&(identical(other.qid, qid) || other.qid == qid)&&(identical(other.lid, lid) || other.lid == lid)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qid,lid,answer);

@override
String toString() {
  return 'ExamEntryModel(qid: $qid, lid: $lid, answer: $answer)';
}


}

/// @nodoc
abstract mixin class $ExamEntryModelCopyWith<$Res>  {
  factory $ExamEntryModelCopyWith(ExamEntryModel value, $Res Function(ExamEntryModel) _then) = _$ExamEntryModelCopyWithImpl;
@useResult
$Res call({
 String qid, String lid, AnswerModel answer
});


$AnswerModelCopyWith<$Res> get answer;

}
/// @nodoc
class _$ExamEntryModelCopyWithImpl<$Res>
    implements $ExamEntryModelCopyWith<$Res> {
  _$ExamEntryModelCopyWithImpl(this._self, this._then);

  final ExamEntryModel _self;
  final $Res Function(ExamEntryModel) _then;

/// Create a copy of ExamEntryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? qid = null,Object? lid = null,Object? answer = null,}) {
  return _then(_self.copyWith(
qid: null == qid ? _self.qid : qid // ignore: cast_nullable_to_non_nullable
as String,lid: null == lid ? _self.lid : lid // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as AnswerModel,
  ));
}
/// Create a copy of ExamEntryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnswerModelCopyWith<$Res> get answer {
  
  return $AnswerModelCopyWith<$Res>(_self.answer, (value) {
    return _then(_self.copyWith(answer: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExamEntryModel].
extension ExamEntryModelPatterns on ExamEntryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamEntryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamEntryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamEntryModel value)  $default,){
final _that = this;
switch (_that) {
case _ExamEntryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamEntryModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExamEntryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String qid,  String lid,  AnswerModel answer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamEntryModel() when $default != null:
return $default(_that.qid,_that.lid,_that.answer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String qid,  String lid,  AnswerModel answer)  $default,) {final _that = this;
switch (_that) {
case _ExamEntryModel():
return $default(_that.qid,_that.lid,_that.answer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String qid,  String lid,  AnswerModel answer)?  $default,) {final _that = this;
switch (_that) {
case _ExamEntryModel() when $default != null:
return $default(_that.qid,_that.lid,_that.answer);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ExamEntryModel implements ExamEntryModel {
  const _ExamEntryModel({this.qid = '', this.lid = '', required this.answer});
  factory _ExamEntryModel.fromJson(Map<String, dynamic> json) => _$ExamEntryModelFromJson(json);

@override@JsonKey() final  String qid;
@override@JsonKey() final  String lid;
@override final  AnswerModel answer;

/// Create a copy of ExamEntryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamEntryModelCopyWith<_ExamEntryModel> get copyWith => __$ExamEntryModelCopyWithImpl<_ExamEntryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamEntryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamEntryModel&&(identical(other.qid, qid) || other.qid == qid)&&(identical(other.lid, lid) || other.lid == lid)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qid,lid,answer);

@override
String toString() {
  return 'ExamEntryModel(qid: $qid, lid: $lid, answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$ExamEntryModelCopyWith<$Res> implements $ExamEntryModelCopyWith<$Res> {
  factory _$ExamEntryModelCopyWith(_ExamEntryModel value, $Res Function(_ExamEntryModel) _then) = __$ExamEntryModelCopyWithImpl;
@override @useResult
$Res call({
 String qid, String lid, AnswerModel answer
});


@override $AnswerModelCopyWith<$Res> get answer;

}
/// @nodoc
class __$ExamEntryModelCopyWithImpl<$Res>
    implements _$ExamEntryModelCopyWith<$Res> {
  __$ExamEntryModelCopyWithImpl(this._self, this._then);

  final _ExamEntryModel _self;
  final $Res Function(_ExamEntryModel) _then;

/// Create a copy of ExamEntryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? qid = null,Object? lid = null,Object? answer = null,}) {
  return _then(_ExamEntryModel(
qid: null == qid ? _self.qid : qid // ignore: cast_nullable_to_non_nullable
as String,lid: null == lid ? _self.lid : lid // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as AnswerModel,
  ));
}

/// Create a copy of ExamEntryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnswerModelCopyWith<$Res> get answer {
  
  return $AnswerModelCopyWith<$Res>(_self.answer, (value) {
    return _then(_self.copyWith(answer: value));
  });
}
}


/// @nodoc
mixin _$AnswerModel {

 String get id; String get choice; bool get isCorrectChoice;
/// Create a copy of AnswerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerModelCopyWith<AnswerModel> get copyWith => _$AnswerModelCopyWithImpl<AnswerModel>(this as AnswerModel, _$identity);

  /// Serializes this AnswerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.choice, choice) || other.choice == choice)&&(identical(other.isCorrectChoice, isCorrectChoice) || other.isCorrectChoice == isCorrectChoice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,choice,isCorrectChoice);

@override
String toString() {
  return 'AnswerModel(id: $id, choice: $choice, isCorrectChoice: $isCorrectChoice)';
}


}

/// @nodoc
abstract mixin class $AnswerModelCopyWith<$Res>  {
  factory $AnswerModelCopyWith(AnswerModel value, $Res Function(AnswerModel) _then) = _$AnswerModelCopyWithImpl;
@useResult
$Res call({
 String id, String choice, bool isCorrectChoice
});




}
/// @nodoc
class _$AnswerModelCopyWithImpl<$Res>
    implements $AnswerModelCopyWith<$Res> {
  _$AnswerModelCopyWithImpl(this._self, this._then);

  final AnswerModel _self;
  final $Res Function(AnswerModel) _then;

/// Create a copy of AnswerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? choice = null,Object? isCorrectChoice = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,choice: null == choice ? _self.choice : choice // ignore: cast_nullable_to_non_nullable
as String,isCorrectChoice: null == isCorrectChoice ? _self.isCorrectChoice : isCorrectChoice // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AnswerModel].
extension AnswerModelPatterns on AnswerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnswerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnswerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnswerModel value)  $default,){
final _that = this;
switch (_that) {
case _AnswerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnswerModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnswerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String choice,  bool isCorrectChoice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnswerModel() when $default != null:
return $default(_that.id,_that.choice,_that.isCorrectChoice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String choice,  bool isCorrectChoice)  $default,) {final _that = this;
switch (_that) {
case _AnswerModel():
return $default(_that.id,_that.choice,_that.isCorrectChoice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String choice,  bool isCorrectChoice)?  $default,) {final _that = this;
switch (_that) {
case _AnswerModel() when $default != null:
return $default(_that.id,_that.choice,_that.isCorrectChoice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnswerModel implements AnswerModel {
  const _AnswerModel({this.id = '', this.choice = '', this.isCorrectChoice = false});
  factory _AnswerModel.fromJson(Map<String, dynamic> json) => _$AnswerModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String choice;
@override@JsonKey() final  bool isCorrectChoice;

/// Create a copy of AnswerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswerModelCopyWith<_AnswerModel> get copyWith => __$AnswerModelCopyWithImpl<_AnswerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnswerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnswerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.choice, choice) || other.choice == choice)&&(identical(other.isCorrectChoice, isCorrectChoice) || other.isCorrectChoice == isCorrectChoice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,choice,isCorrectChoice);

@override
String toString() {
  return 'AnswerModel(id: $id, choice: $choice, isCorrectChoice: $isCorrectChoice)';
}


}

/// @nodoc
abstract mixin class _$AnswerModelCopyWith<$Res> implements $AnswerModelCopyWith<$Res> {
  factory _$AnswerModelCopyWith(_AnswerModel value, $Res Function(_AnswerModel) _then) = __$AnswerModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String choice, bool isCorrectChoice
});




}
/// @nodoc
class __$AnswerModelCopyWithImpl<$Res>
    implements _$AnswerModelCopyWith<$Res> {
  __$AnswerModelCopyWithImpl(this._self, this._then);

  final _AnswerModel _self;
  final $Res Function(_AnswerModel) _then;

/// Create a copy of AnswerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? choice = null,Object? isCorrectChoice = null,}) {
  return _then(_AnswerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,choice: null == choice ? _self.choice : choice // ignore: cast_nullable_to_non_nullable
as String,isCorrectChoice: null == isCorrectChoice ? _self.isCorrectChoice : isCorrectChoice // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$AssessmentEntryModel {

 String get qid;/// Source uses string indices ("1", "2", etc.)
 String get answerIndex;
/// Create a copy of AssessmentEntryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssessmentEntryModelCopyWith<AssessmentEntryModel> get copyWith => _$AssessmentEntryModelCopyWithImpl<AssessmentEntryModel>(this as AssessmentEntryModel, _$identity);

  /// Serializes this AssessmentEntryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssessmentEntryModel&&(identical(other.qid, qid) || other.qid == qid)&&(identical(other.answerIndex, answerIndex) || other.answerIndex == answerIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qid,answerIndex);

@override
String toString() {
  return 'AssessmentEntryModel(qid: $qid, answerIndex: $answerIndex)';
}


}

/// @nodoc
abstract mixin class $AssessmentEntryModelCopyWith<$Res>  {
  factory $AssessmentEntryModelCopyWith(AssessmentEntryModel value, $Res Function(AssessmentEntryModel) _then) = _$AssessmentEntryModelCopyWithImpl;
@useResult
$Res call({
 String qid, String answerIndex
});




}
/// @nodoc
class _$AssessmentEntryModelCopyWithImpl<$Res>
    implements $AssessmentEntryModelCopyWith<$Res> {
  _$AssessmentEntryModelCopyWithImpl(this._self, this._then);

  final AssessmentEntryModel _self;
  final $Res Function(AssessmentEntryModel) _then;

/// Create a copy of AssessmentEntryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? qid = null,Object? answerIndex = null,}) {
  return _then(_self.copyWith(
qid: null == qid ? _self.qid : qid // ignore: cast_nullable_to_non_nullable
as String,answerIndex: null == answerIndex ? _self.answerIndex : answerIndex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AssessmentEntryModel].
extension AssessmentEntryModelPatterns on AssessmentEntryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssessmentEntryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssessmentEntryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssessmentEntryModel value)  $default,){
final _that = this;
switch (_that) {
case _AssessmentEntryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssessmentEntryModel value)?  $default,){
final _that = this;
switch (_that) {
case _AssessmentEntryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String qid,  String answerIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssessmentEntryModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String qid,  String answerIndex)  $default,) {final _that = this;
switch (_that) {
case _AssessmentEntryModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String qid,  String answerIndex)?  $default,) {final _that = this;
switch (_that) {
case _AssessmentEntryModel() when $default != null:
return $default(_that.qid,_that.answerIndex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssessmentEntryModel implements AssessmentEntryModel {
  const _AssessmentEntryModel({this.qid = '', this.answerIndex = ''});
  factory _AssessmentEntryModel.fromJson(Map<String, dynamic> json) => _$AssessmentEntryModelFromJson(json);

@override@JsonKey() final  String qid;
/// Source uses string indices ("1", "2", etc.)
@override@JsonKey() final  String answerIndex;

/// Create a copy of AssessmentEntryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssessmentEntryModelCopyWith<_AssessmentEntryModel> get copyWith => __$AssessmentEntryModelCopyWithImpl<_AssessmentEntryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssessmentEntryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssessmentEntryModel&&(identical(other.qid, qid) || other.qid == qid)&&(identical(other.answerIndex, answerIndex) || other.answerIndex == answerIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qid,answerIndex);

@override
String toString() {
  return 'AssessmentEntryModel(qid: $qid, answerIndex: $answerIndex)';
}


}

/// @nodoc
abstract mixin class _$AssessmentEntryModelCopyWith<$Res> implements $AssessmentEntryModelCopyWith<$Res> {
  factory _$AssessmentEntryModelCopyWith(_AssessmentEntryModel value, $Res Function(_AssessmentEntryModel) _then) = __$AssessmentEntryModelCopyWithImpl;
@override @useResult
$Res call({
 String qid, String answerIndex
});




}
/// @nodoc
class __$AssessmentEntryModelCopyWithImpl<$Res>
    implements _$AssessmentEntryModelCopyWith<$Res> {
  __$AssessmentEntryModelCopyWithImpl(this._self, this._then);

  final _AssessmentEntryModel _self;
  final $Res Function(_AssessmentEntryModel) _then;

/// Create a copy of AssessmentEntryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? qid = null,Object? answerIndex = null,}) {
  return _then(_AssessmentEntryModel(
qid: null == qid ? _self.qid : qid // ignore: cast_nullable_to_non_nullable
as String,answerIndex: null == answerIndex ? _self.answerIndex : answerIndex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AssessmentAnswer {

 String get qid;@JsonKey(name: 'answerIndex') String get answerIndex;
/// Create a copy of AssessmentAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssessmentAnswerCopyWith<AssessmentAnswer> get copyWith => _$AssessmentAnswerCopyWithImpl<AssessmentAnswer>(this as AssessmentAnswer, _$identity);

  /// Serializes this AssessmentAnswer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssessmentAnswer&&(identical(other.qid, qid) || other.qid == qid)&&(identical(other.answerIndex, answerIndex) || other.answerIndex == answerIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qid,answerIndex);

@override
String toString() {
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

class _AssessmentAnswer implements AssessmentAnswer {
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
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssessmentAnswer&&(identical(other.qid, qid) || other.qid == qid)&&(identical(other.answerIndex, answerIndex) || other.answerIndex == answerIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qid,answerIndex);

@override
String toString() {
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
mixin _$StudentEnrollment {

 String get uid; String get name;@JsonKey(includeIfNull: true) String? get difficulty;@JsonKey(includeFromJson: false, includeToJson: false) String? get changedDifficulty; List<AssessmentAnswer> get assessment;
/// Create a copy of StudentEnrollment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentEnrollmentCopyWith<StudentEnrollment> get copyWith => _$StudentEnrollmentCopyWithImpl<StudentEnrollment>(this as StudentEnrollment, _$identity);

  /// Serializes this StudentEnrollment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentEnrollment&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.changedDifficulty, changedDifficulty) || other.changedDifficulty == changedDifficulty)&&const DeepCollectionEquality().equals(other.assessment, assessment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,name,difficulty,changedDifficulty,const DeepCollectionEquality().hash(assessment));

@override
String toString() {
  return 'StudentEnrollment(uid: $uid, name: $name, difficulty: $difficulty, changedDifficulty: $changedDifficulty, assessment: $assessment)';
}


}

/// @nodoc
abstract mixin class $StudentEnrollmentCopyWith<$Res>  {
  factory $StudentEnrollmentCopyWith(StudentEnrollment value, $Res Function(StudentEnrollment) _then) = _$StudentEnrollmentCopyWithImpl;
@useResult
$Res call({
 String uid, String name,@JsonKey(includeIfNull: true) String? difficulty,@JsonKey(includeFromJson: false, includeToJson: false) String? changedDifficulty, List<AssessmentAnswer> assessment
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
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? name = null,Object? difficulty = freezed,Object? changedDifficulty = freezed,Object? assessment = null,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,changedDifficulty: freezed == changedDifficulty ? _self.changedDifficulty : changedDifficulty // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String name, @JsonKey(includeIfNull: true)  String? difficulty, @JsonKey(includeFromJson: false, includeToJson: false)  String? changedDifficulty,  List<AssessmentAnswer> assessment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentEnrollment() when $default != null:
return $default(_that.uid,_that.name,_that.difficulty,_that.changedDifficulty,_that.assessment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String name, @JsonKey(includeIfNull: true)  String? difficulty, @JsonKey(includeFromJson: false, includeToJson: false)  String? changedDifficulty,  List<AssessmentAnswer> assessment)  $default,) {final _that = this;
switch (_that) {
case _StudentEnrollment():
return $default(_that.uid,_that.name,_that.difficulty,_that.changedDifficulty,_that.assessment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String name, @JsonKey(includeIfNull: true)  String? difficulty, @JsonKey(includeFromJson: false, includeToJson: false)  String? changedDifficulty,  List<AssessmentAnswer> assessment)?  $default,) {final _that = this;
switch (_that) {
case _StudentEnrollment() when $default != null:
return $default(_that.uid,_that.name,_that.difficulty,_that.changedDifficulty,_that.assessment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentEnrollment implements StudentEnrollment {
  const _StudentEnrollment({required this.uid, this.name = '', @JsonKey(includeIfNull: true) this.difficulty, @JsonKey(includeFromJson: false, includeToJson: false) this.changedDifficulty, final  List<AssessmentAnswer> assessment = const <AssessmentAnswer>[]}): _assessment = assessment;
  factory _StudentEnrollment.fromJson(Map<String, dynamic> json) => _$StudentEnrollmentFromJson(json);

@override final  String uid;
@override@JsonKey() final  String name;
@override@JsonKey(includeIfNull: true) final  String? difficulty;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  String? changedDifficulty;
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
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentEnrollment&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.changedDifficulty, changedDifficulty) || other.changedDifficulty == changedDifficulty)&&const DeepCollectionEquality().equals(other._assessment, _assessment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,name,difficulty,changedDifficulty,const DeepCollectionEquality().hash(_assessment));

@override
String toString() {
  return 'StudentEnrollment(uid: $uid, name: $name, difficulty: $difficulty, changedDifficulty: $changedDifficulty, assessment: $assessment)';
}


}

/// @nodoc
abstract mixin class _$StudentEnrollmentCopyWith<$Res> implements $StudentEnrollmentCopyWith<$Res> {
  factory _$StudentEnrollmentCopyWith(_StudentEnrollment value, $Res Function(_StudentEnrollment) _then) = __$StudentEnrollmentCopyWithImpl;
@override @useResult
$Res call({
 String uid, String name,@JsonKey(includeIfNull: true) String? difficulty,@JsonKey(includeFromJson: false, includeToJson: false) String? changedDifficulty, List<AssessmentAnswer> assessment
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
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? name = null,Object? difficulty = freezed,Object? changedDifficulty = freezed,Object? assessment = null,}) {
  return _then(_StudentEnrollment(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,changedDifficulty: freezed == changedDifficulty ? _self.changedDifficulty : changedDifficulty // ignore: cast_nullable_to_non_nullable
as String?,assessment: null == assessment ? _self._assessment : assessment // ignore: cast_nullable_to_non_nullable
as List<AssessmentAnswer>,
  ));
}


}

// dart format on
