// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LessonModel {

 String get title; String get description;@NumToInt() int get durationMinutes; AgeRange get ageRange; List<String> get tags; TheoryContent get theoryContent; Exam get exam; bool get isActive;/// Optional: keep Firestore doc id if you want it
@JsonKey(includeFromJson: false, includeToJson: false) String? get id;
/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonModelCopyWith<LessonModel> get copyWith => _$LessonModelCopyWithImpl<LessonModel>(this as LessonModel, _$identity);

  /// Serializes this LessonModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.ageRange, ageRange) || other.ageRange == ageRange)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.theoryContent, theoryContent) || other.theoryContent == theoryContent)&&(identical(other.exam, exam) || other.exam == exam)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,durationMinutes,ageRange,const DeepCollectionEquality().hash(tags),theoryContent,exam,isActive,id);

@override
String toString() {
  return 'LessonModel(title: $title, description: $description, durationMinutes: $durationMinutes, ageRange: $ageRange, tags: $tags, theoryContent: $theoryContent, exam: $exam, isActive: $isActive, id: $id)';
}


}

/// @nodoc
abstract mixin class $LessonModelCopyWith<$Res>  {
  factory $LessonModelCopyWith(LessonModel value, $Res Function(LessonModel) _then) = _$LessonModelCopyWithImpl;
@useResult
$Res call({
 String title, String description,@NumToInt() int durationMinutes, AgeRange ageRange, List<String> tags, TheoryContent theoryContent, Exam exam, bool isActive,@JsonKey(includeFromJson: false, includeToJson: false) String? id
});


$AgeRangeCopyWith<$Res> get ageRange;$TheoryContentCopyWith<$Res> get theoryContent;$ExamCopyWith<$Res> get exam;

}
/// @nodoc
class _$LessonModelCopyWithImpl<$Res>
    implements $LessonModelCopyWith<$Res> {
  _$LessonModelCopyWithImpl(this._self, this._then);

  final LessonModel _self;
  final $Res Function(LessonModel) _then;

/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? durationMinutes = null,Object? ageRange = null,Object? tags = null,Object? theoryContent = null,Object? exam = null,Object? isActive = null,Object? id = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,ageRange: null == ageRange ? _self.ageRange : ageRange // ignore: cast_nullable_to_non_nullable
as AgeRange,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,theoryContent: null == theoryContent ? _self.theoryContent : theoryContent // ignore: cast_nullable_to_non_nullable
as TheoryContent,exam: null == exam ? _self.exam : exam // ignore: cast_nullable_to_non_nullable
as Exam,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeRangeCopyWith<$Res> get ageRange {
  
  return $AgeRangeCopyWith<$Res>(_self.ageRange, (value) {
    return _then(_self.copyWith(ageRange: value));
  });
}/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TheoryContentCopyWith<$Res> get theoryContent {
  
  return $TheoryContentCopyWith<$Res>(_self.theoryContent, (value) {
    return _then(_self.copyWith(theoryContent: value));
  });
}/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExamCopyWith<$Res> get exam {
  
  return $ExamCopyWith<$Res>(_self.exam, (value) {
    return _then(_self.copyWith(exam: value));
  });
}
}


/// Adds pattern-matching-related methods to [LessonModel].
extension LessonModelPatterns on LessonModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonModel value)  $default,){
final _that = this;
switch (_that) {
case _LessonModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonModel value)?  $default,){
final _that = this;
switch (_that) {
case _LessonModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description, @NumToInt()  int durationMinutes,  AgeRange ageRange,  List<String> tags,  TheoryContent theoryContent,  Exam exam,  bool isActive, @JsonKey(includeFromJson: false, includeToJson: false)  String? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonModel() when $default != null:
return $default(_that.title,_that.description,_that.durationMinutes,_that.ageRange,_that.tags,_that.theoryContent,_that.exam,_that.isActive,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description, @NumToInt()  int durationMinutes,  AgeRange ageRange,  List<String> tags,  TheoryContent theoryContent,  Exam exam,  bool isActive, @JsonKey(includeFromJson: false, includeToJson: false)  String? id)  $default,) {final _that = this;
switch (_that) {
case _LessonModel():
return $default(_that.title,_that.description,_that.durationMinutes,_that.ageRange,_that.tags,_that.theoryContent,_that.exam,_that.isActive,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description, @NumToInt()  int durationMinutes,  AgeRange ageRange,  List<String> tags,  TheoryContent theoryContent,  Exam exam,  bool isActive, @JsonKey(includeFromJson: false, includeToJson: false)  String? id)?  $default,) {final _that = this;
switch (_that) {
case _LessonModel() when $default != null:
return $default(_that.title,_that.description,_that.durationMinutes,_that.ageRange,_that.tags,_that.theoryContent,_that.exam,_that.isActive,_that.id);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _LessonModel implements LessonModel {
  const _LessonModel({required this.title, required this.description, @NumToInt() required this.durationMinutes, required this.ageRange, required final  List<String> tags, required this.theoryContent, required this.exam, this.isActive = true, @JsonKey(includeFromJson: false, includeToJson: false) this.id}): _tags = tags;
  factory _LessonModel.fromJson(Map<String, dynamic> json) => _$LessonModelFromJson(json);

@override final  String title;
@override final  String description;
@override@NumToInt() final  int durationMinutes;
@override final  AgeRange ageRange;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  TheoryContent theoryContent;
@override final  Exam exam;
@override@JsonKey() final  bool isActive;
/// Optional: keep Firestore doc id if you want it
@override@JsonKey(includeFromJson: false, includeToJson: false) final  String? id;

/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonModelCopyWith<_LessonModel> get copyWith => __$LessonModelCopyWithImpl<_LessonModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.ageRange, ageRange) || other.ageRange == ageRange)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.theoryContent, theoryContent) || other.theoryContent == theoryContent)&&(identical(other.exam, exam) || other.exam == exam)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,durationMinutes,ageRange,const DeepCollectionEquality().hash(_tags),theoryContent,exam,isActive,id);

@override
String toString() {
  return 'LessonModel(title: $title, description: $description, durationMinutes: $durationMinutes, ageRange: $ageRange, tags: $tags, theoryContent: $theoryContent, exam: $exam, isActive: $isActive, id: $id)';
}


}

/// @nodoc
abstract mixin class _$LessonModelCopyWith<$Res> implements $LessonModelCopyWith<$Res> {
  factory _$LessonModelCopyWith(_LessonModel value, $Res Function(_LessonModel) _then) = __$LessonModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String description,@NumToInt() int durationMinutes, AgeRange ageRange, List<String> tags, TheoryContent theoryContent, Exam exam, bool isActive,@JsonKey(includeFromJson: false, includeToJson: false) String? id
});


@override $AgeRangeCopyWith<$Res> get ageRange;@override $TheoryContentCopyWith<$Res> get theoryContent;@override $ExamCopyWith<$Res> get exam;

}
/// @nodoc
class __$LessonModelCopyWithImpl<$Res>
    implements _$LessonModelCopyWith<$Res> {
  __$LessonModelCopyWithImpl(this._self, this._then);

  final _LessonModel _self;
  final $Res Function(_LessonModel) _then;

/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? durationMinutes = null,Object? ageRange = null,Object? tags = null,Object? theoryContent = null,Object? exam = null,Object? isActive = null,Object? id = freezed,}) {
  return _then(_LessonModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,ageRange: null == ageRange ? _self.ageRange : ageRange // ignore: cast_nullable_to_non_nullable
as AgeRange,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,theoryContent: null == theoryContent ? _self.theoryContent : theoryContent // ignore: cast_nullable_to_non_nullable
as TheoryContent,exam: null == exam ? _self.exam : exam // ignore: cast_nullable_to_non_nullable
as Exam,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgeRangeCopyWith<$Res> get ageRange {
  
  return $AgeRangeCopyWith<$Res>(_self.ageRange, (value) {
    return _then(_self.copyWith(ageRange: value));
  });
}/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TheoryContentCopyWith<$Res> get theoryContent {
  
  return $TheoryContentCopyWith<$Res>(_self.theoryContent, (value) {
    return _then(_self.copyWith(theoryContent: value));
  });
}/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExamCopyWith<$Res> get exam {
  
  return $ExamCopyWith<$Res>(_self.exam, (value) {
    return _then(_self.copyWith(exam: value));
  });
}
}


/// @nodoc
mixin _$AgeRange {

@NumToInt() int get max;@NumToInt() int get min;
/// Create a copy of AgeRange
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgeRangeCopyWith<AgeRange> get copyWith => _$AgeRangeCopyWithImpl<AgeRange>(this as AgeRange, _$identity);

  /// Serializes this AgeRange to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgeRange&&(identical(other.max, max) || other.max == max)&&(identical(other.min, min) || other.min == min));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,max,min);

@override
String toString() {
  return 'AgeRange(max: $max, min: $min)';
}


}

/// @nodoc
abstract mixin class $AgeRangeCopyWith<$Res>  {
  factory $AgeRangeCopyWith(AgeRange value, $Res Function(AgeRange) _then) = _$AgeRangeCopyWithImpl;
@useResult
$Res call({
@NumToInt() int max,@NumToInt() int min
});




}
/// @nodoc
class _$AgeRangeCopyWithImpl<$Res>
    implements $AgeRangeCopyWith<$Res> {
  _$AgeRangeCopyWithImpl(this._self, this._then);

  final AgeRange _self;
  final $Res Function(AgeRange) _then;

/// Create a copy of AgeRange
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? max = null,Object? min = null,}) {
  return _then(_self.copyWith(
max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AgeRange].
extension AgeRangePatterns on AgeRange {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgeRange value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgeRange() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgeRange value)  $default,){
final _that = this;
switch (_that) {
case _AgeRange():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgeRange value)?  $default,){
final _that = this;
switch (_that) {
case _AgeRange() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@NumToInt()  int max, @NumToInt()  int min)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgeRange() when $default != null:
return $default(_that.max,_that.min);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@NumToInt()  int max, @NumToInt()  int min)  $default,) {final _that = this;
switch (_that) {
case _AgeRange():
return $default(_that.max,_that.min);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@NumToInt()  int max, @NumToInt()  int min)?  $default,) {final _that = this;
switch (_that) {
case _AgeRange() when $default != null:
return $default(_that.max,_that.min);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AgeRange implements AgeRange {
  const _AgeRange({@NumToInt() required this.max, @NumToInt() required this.min});
  factory _AgeRange.fromJson(Map<String, dynamic> json) => _$AgeRangeFromJson(json);

@override@NumToInt() final  int max;
@override@NumToInt() final  int min;

/// Create a copy of AgeRange
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgeRangeCopyWith<_AgeRange> get copyWith => __$AgeRangeCopyWithImpl<_AgeRange>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AgeRangeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgeRange&&(identical(other.max, max) || other.max == max)&&(identical(other.min, min) || other.min == min));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,max,min);

@override
String toString() {
  return 'AgeRange(max: $max, min: $min)';
}


}

/// @nodoc
abstract mixin class _$AgeRangeCopyWith<$Res> implements $AgeRangeCopyWith<$Res> {
  factory _$AgeRangeCopyWith(_AgeRange value, $Res Function(_AgeRange) _then) = __$AgeRangeCopyWithImpl;
@override @useResult
$Res call({
@NumToInt() int max,@NumToInt() int min
});




}
/// @nodoc
class __$AgeRangeCopyWithImpl<$Res>
    implements _$AgeRangeCopyWith<$Res> {
  __$AgeRangeCopyWithImpl(this._self, this._then);

  final _AgeRange _self;
  final $Res Function(_AgeRange) _then;

/// Create a copy of AgeRange
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? max = null,Object? min = null,}) {
  return _then(_AgeRange(
max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$TheoryContent {

 List<Slide> get basic; List<Slide> get intermediate; List<Slide> get advanced;
/// Create a copy of TheoryContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TheoryContentCopyWith<TheoryContent> get copyWith => _$TheoryContentCopyWithImpl<TheoryContent>(this as TheoryContent, _$identity);

  /// Serializes this TheoryContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TheoryContent&&const DeepCollectionEquality().equals(other.basic, basic)&&const DeepCollectionEquality().equals(other.intermediate, intermediate)&&const DeepCollectionEquality().equals(other.advanced, advanced));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(basic),const DeepCollectionEquality().hash(intermediate),const DeepCollectionEquality().hash(advanced));

@override
String toString() {
  return 'TheoryContent(basic: $basic, intermediate: $intermediate, advanced: $advanced)';
}


}

/// @nodoc
abstract mixin class $TheoryContentCopyWith<$Res>  {
  factory $TheoryContentCopyWith(TheoryContent value, $Res Function(TheoryContent) _then) = _$TheoryContentCopyWithImpl;
@useResult
$Res call({
 List<Slide> basic, List<Slide> intermediate, List<Slide> advanced
});




}
/// @nodoc
class _$TheoryContentCopyWithImpl<$Res>
    implements $TheoryContentCopyWith<$Res> {
  _$TheoryContentCopyWithImpl(this._self, this._then);

  final TheoryContent _self;
  final $Res Function(TheoryContent) _then;

/// Create a copy of TheoryContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? basic = null,Object? intermediate = null,Object? advanced = null,}) {
  return _then(_self.copyWith(
basic: null == basic ? _self.basic : basic // ignore: cast_nullable_to_non_nullable
as List<Slide>,intermediate: null == intermediate ? _self.intermediate : intermediate // ignore: cast_nullable_to_non_nullable
as List<Slide>,advanced: null == advanced ? _self.advanced : advanced // ignore: cast_nullable_to_non_nullable
as List<Slide>,
  ));
}

}


/// Adds pattern-matching-related methods to [TheoryContent].
extension TheoryContentPatterns on TheoryContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TheoryContent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TheoryContent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TheoryContent value)  $default,){
final _that = this;
switch (_that) {
case _TheoryContent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TheoryContent value)?  $default,){
final _that = this;
switch (_that) {
case _TheoryContent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Slide> basic,  List<Slide> intermediate,  List<Slide> advanced)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TheoryContent() when $default != null:
return $default(_that.basic,_that.intermediate,_that.advanced);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Slide> basic,  List<Slide> intermediate,  List<Slide> advanced)  $default,) {final _that = this;
switch (_that) {
case _TheoryContent():
return $default(_that.basic,_that.intermediate,_that.advanced);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Slide> basic,  List<Slide> intermediate,  List<Slide> advanced)?  $default,) {final _that = this;
switch (_that) {
case _TheoryContent() when $default != null:
return $default(_that.basic,_that.intermediate,_that.advanced);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _TheoryContent implements TheoryContent {
  const _TheoryContent({required final  List<Slide> basic, required final  List<Slide> intermediate, required final  List<Slide> advanced}): _basic = basic,_intermediate = intermediate,_advanced = advanced;
  factory _TheoryContent.fromJson(Map<String, dynamic> json) => _$TheoryContentFromJson(json);

 final  List<Slide> _basic;
@override List<Slide> get basic {
  if (_basic is EqualUnmodifiableListView) return _basic;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_basic);
}

 final  List<Slide> _intermediate;
@override List<Slide> get intermediate {
  if (_intermediate is EqualUnmodifiableListView) return _intermediate;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_intermediate);
}

 final  List<Slide> _advanced;
@override List<Slide> get advanced {
  if (_advanced is EqualUnmodifiableListView) return _advanced;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_advanced);
}


/// Create a copy of TheoryContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TheoryContentCopyWith<_TheoryContent> get copyWith => __$TheoryContentCopyWithImpl<_TheoryContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TheoryContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TheoryContent&&const DeepCollectionEquality().equals(other._basic, _basic)&&const DeepCollectionEquality().equals(other._intermediate, _intermediate)&&const DeepCollectionEquality().equals(other._advanced, _advanced));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_basic),const DeepCollectionEquality().hash(_intermediate),const DeepCollectionEquality().hash(_advanced));

@override
String toString() {
  return 'TheoryContent(basic: $basic, intermediate: $intermediate, advanced: $advanced)';
}


}

/// @nodoc
abstract mixin class _$TheoryContentCopyWith<$Res> implements $TheoryContentCopyWith<$Res> {
  factory _$TheoryContentCopyWith(_TheoryContent value, $Res Function(_TheoryContent) _then) = __$TheoryContentCopyWithImpl;
@override @useResult
$Res call({
 List<Slide> basic, List<Slide> intermediate, List<Slide> advanced
});




}
/// @nodoc
class __$TheoryContentCopyWithImpl<$Res>
    implements _$TheoryContentCopyWith<$Res> {
  __$TheoryContentCopyWithImpl(this._self, this._then);

  final _TheoryContent _self;
  final $Res Function(_TheoryContent) _then;

/// Create a copy of TheoryContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? basic = null,Object? intermediate = null,Object? advanced = null,}) {
  return _then(_TheoryContent(
basic: null == basic ? _self._basic : basic // ignore: cast_nullable_to_non_nullable
as List<Slide>,intermediate: null == intermediate ? _self._intermediate : intermediate // ignore: cast_nullable_to_non_nullable
as List<Slide>,advanced: null == advanced ? _self._advanced : advanced // ignore: cast_nullable_to_non_nullable
as List<Slide>,
  ));
}


}


/// @nodoc
mixin _$Exam {

 List<PostQuestionModel> get basic; List<PostQuestionModel> get intermediate; List<PostQuestionModel> get advanced;
/// Create a copy of Exam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamCopyWith<Exam> get copyWith => _$ExamCopyWithImpl<Exam>(this as Exam, _$identity);

  /// Serializes this Exam to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Exam&&const DeepCollectionEquality().equals(other.basic, basic)&&const DeepCollectionEquality().equals(other.intermediate, intermediate)&&const DeepCollectionEquality().equals(other.advanced, advanced));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(basic),const DeepCollectionEquality().hash(intermediate),const DeepCollectionEquality().hash(advanced));

@override
String toString() {
  return 'Exam(basic: $basic, intermediate: $intermediate, advanced: $advanced)';
}


}

/// @nodoc
abstract mixin class $ExamCopyWith<$Res>  {
  factory $ExamCopyWith(Exam value, $Res Function(Exam) _then) = _$ExamCopyWithImpl;
@useResult
$Res call({
 List<PostQuestionModel> basic, List<PostQuestionModel> intermediate, List<PostQuestionModel> advanced
});




}
/// @nodoc
class _$ExamCopyWithImpl<$Res>
    implements $ExamCopyWith<$Res> {
  _$ExamCopyWithImpl(this._self, this._then);

  final Exam _self;
  final $Res Function(Exam) _then;

/// Create a copy of Exam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? basic = null,Object? intermediate = null,Object? advanced = null,}) {
  return _then(_self.copyWith(
basic: null == basic ? _self.basic : basic // ignore: cast_nullable_to_non_nullable
as List<PostQuestionModel>,intermediate: null == intermediate ? _self.intermediate : intermediate // ignore: cast_nullable_to_non_nullable
as List<PostQuestionModel>,advanced: null == advanced ? _self.advanced : advanced // ignore: cast_nullable_to_non_nullable
as List<PostQuestionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [Exam].
extension ExamPatterns on Exam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Exam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Exam() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Exam value)  $default,){
final _that = this;
switch (_that) {
case _Exam():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Exam value)?  $default,){
final _that = this;
switch (_that) {
case _Exam() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PostQuestionModel> basic,  List<PostQuestionModel> intermediate,  List<PostQuestionModel> advanced)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Exam() when $default != null:
return $default(_that.basic,_that.intermediate,_that.advanced);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PostQuestionModel> basic,  List<PostQuestionModel> intermediate,  List<PostQuestionModel> advanced)  $default,) {final _that = this;
switch (_that) {
case _Exam():
return $default(_that.basic,_that.intermediate,_that.advanced);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PostQuestionModel> basic,  List<PostQuestionModel> intermediate,  List<PostQuestionModel> advanced)?  $default,) {final _that = this;
switch (_that) {
case _Exam() when $default != null:
return $default(_that.basic,_that.intermediate,_that.advanced);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _Exam implements Exam {
  const _Exam({required final  List<PostQuestionModel> basic, required final  List<PostQuestionModel> intermediate, required final  List<PostQuestionModel> advanced}): _basic = basic,_intermediate = intermediate,_advanced = advanced;
  factory _Exam.fromJson(Map<String, dynamic> json) => _$ExamFromJson(json);

 final  List<PostQuestionModel> _basic;
@override List<PostQuestionModel> get basic {
  if (_basic is EqualUnmodifiableListView) return _basic;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_basic);
}

 final  List<PostQuestionModel> _intermediate;
@override List<PostQuestionModel> get intermediate {
  if (_intermediate is EqualUnmodifiableListView) return _intermediate;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_intermediate);
}

 final  List<PostQuestionModel> _advanced;
@override List<PostQuestionModel> get advanced {
  if (_advanced is EqualUnmodifiableListView) return _advanced;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_advanced);
}


/// Create a copy of Exam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamCopyWith<_Exam> get copyWith => __$ExamCopyWithImpl<_Exam>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Exam&&const DeepCollectionEquality().equals(other._basic, _basic)&&const DeepCollectionEquality().equals(other._intermediate, _intermediate)&&const DeepCollectionEquality().equals(other._advanced, _advanced));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_basic),const DeepCollectionEquality().hash(_intermediate),const DeepCollectionEquality().hash(_advanced));

@override
String toString() {
  return 'Exam(basic: $basic, intermediate: $intermediate, advanced: $advanced)';
}


}

/// @nodoc
abstract mixin class _$ExamCopyWith<$Res> implements $ExamCopyWith<$Res> {
  factory _$ExamCopyWith(_Exam value, $Res Function(_Exam) _then) = __$ExamCopyWithImpl;
@override @useResult
$Res call({
 List<PostQuestionModel> basic, List<PostQuestionModel> intermediate, List<PostQuestionModel> advanced
});




}
/// @nodoc
class __$ExamCopyWithImpl<$Res>
    implements _$ExamCopyWith<$Res> {
  __$ExamCopyWithImpl(this._self, this._then);

  final _Exam _self;
  final $Res Function(_Exam) _then;

/// Create a copy of Exam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? basic = null,Object? intermediate = null,Object? advanced = null,}) {
  return _then(_Exam(
basic: null == basic ? _self._basic : basic // ignore: cast_nullable_to_non_nullable
as List<PostQuestionModel>,intermediate: null == intermediate ? _self._intermediate : intermediate // ignore: cast_nullable_to_non_nullable
as List<PostQuestionModel>,advanced: null == advanced ? _self._advanced : advanced // ignore: cast_nullable_to_non_nullable
as List<PostQuestionModel>,
  ));
}


}


/// @nodoc
mixin _$Slide {

 String? get title; String? get content; String? get caption; String? get imageURL; String? get videoURL; String? get link; SlideType get type; List<Hint>? get hints;
/// Create a copy of Slide
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SlideCopyWith<Slide> get copyWith => _$SlideCopyWithImpl<Slide>(this as Slide, _$identity);

  /// Serializes this Slide to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Slide&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.imageURL, imageURL) || other.imageURL == imageURL)&&(identical(other.videoURL, videoURL) || other.videoURL == videoURL)&&(identical(other.link, link) || other.link == link)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.hints, hints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content,caption,imageURL,videoURL,link,type,const DeepCollectionEquality().hash(hints));

@override
String toString() {
  return 'Slide(title: $title, content: $content, caption: $caption, imageURL: $imageURL, videoURL: $videoURL, link: $link, type: $type, hints: $hints)';
}


}

/// @nodoc
abstract mixin class $SlideCopyWith<$Res>  {
  factory $SlideCopyWith(Slide value, $Res Function(Slide) _then) = _$SlideCopyWithImpl;
@useResult
$Res call({
 String? title, String? content, String? caption, String? imageURL, String? videoURL, String? link, SlideType type, List<Hint>? hints
});




}
/// @nodoc
class _$SlideCopyWithImpl<$Res>
    implements $SlideCopyWith<$Res> {
  _$SlideCopyWithImpl(this._self, this._then);

  final Slide _self;
  final $Res Function(Slide) _then;

/// Create a copy of Slide
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? content = freezed,Object? caption = freezed,Object? imageURL = freezed,Object? videoURL = freezed,Object? link = freezed,Object? type = null,Object? hints = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,imageURL: freezed == imageURL ? _self.imageURL : imageURL // ignore: cast_nullable_to_non_nullable
as String?,videoURL: freezed == videoURL ? _self.videoURL : videoURL // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SlideType,hints: freezed == hints ? _self.hints : hints // ignore: cast_nullable_to_non_nullable
as List<Hint>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Slide].
extension SlidePatterns on Slide {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Slide value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Slide() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Slide value)  $default,){
final _that = this;
switch (_that) {
case _Slide():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Slide value)?  $default,){
final _that = this;
switch (_that) {
case _Slide() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? content,  String? caption,  String? imageURL,  String? videoURL,  String? link,  SlideType type,  List<Hint>? hints)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Slide() when $default != null:
return $default(_that.title,_that.content,_that.caption,_that.imageURL,_that.videoURL,_that.link,_that.type,_that.hints);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? content,  String? caption,  String? imageURL,  String? videoURL,  String? link,  SlideType type,  List<Hint>? hints)  $default,) {final _that = this;
switch (_that) {
case _Slide():
return $default(_that.title,_that.content,_that.caption,_that.imageURL,_that.videoURL,_that.link,_that.type,_that.hints);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? content,  String? caption,  String? imageURL,  String? videoURL,  String? link,  SlideType type,  List<Hint>? hints)?  $default,) {final _that = this;
switch (_that) {
case _Slide() when $default != null:
return $default(_that.title,_that.content,_that.caption,_that.imageURL,_that.videoURL,_that.link,_that.type,_that.hints);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _Slide implements Slide {
  const _Slide({this.title, this.content, this.caption, this.imageURL, this.videoURL, this.link, required this.type, final  List<Hint>? hints}): _hints = hints;
  factory _Slide.fromJson(Map<String, dynamic> json) => _$SlideFromJson(json);

@override final  String? title;
@override final  String? content;
@override final  String? caption;
@override final  String? imageURL;
@override final  String? videoURL;
@override final  String? link;
@override final  SlideType type;
 final  List<Hint>? _hints;
@override List<Hint>? get hints {
  final value = _hints;
  if (value == null) return null;
  if (_hints is EqualUnmodifiableListView) return _hints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Slide
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SlideCopyWith<_Slide> get copyWith => __$SlideCopyWithImpl<_Slide>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SlideToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Slide&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.imageURL, imageURL) || other.imageURL == imageURL)&&(identical(other.videoURL, videoURL) || other.videoURL == videoURL)&&(identical(other.link, link) || other.link == link)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._hints, _hints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content,caption,imageURL,videoURL,link,type,const DeepCollectionEquality().hash(_hints));

@override
String toString() {
  return 'Slide(title: $title, content: $content, caption: $caption, imageURL: $imageURL, videoURL: $videoURL, link: $link, type: $type, hints: $hints)';
}


}

/// @nodoc
abstract mixin class _$SlideCopyWith<$Res> implements $SlideCopyWith<$Res> {
  factory _$SlideCopyWith(_Slide value, $Res Function(_Slide) _then) = __$SlideCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? content, String? caption, String? imageURL, String? videoURL, String? link, SlideType type, List<Hint>? hints
});




}
/// @nodoc
class __$SlideCopyWithImpl<$Res>
    implements _$SlideCopyWith<$Res> {
  __$SlideCopyWithImpl(this._self, this._then);

  final _Slide _self;
  final $Res Function(_Slide) _then;

/// Create a copy of Slide
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? content = freezed,Object? caption = freezed,Object? imageURL = freezed,Object? videoURL = freezed,Object? link = freezed,Object? type = null,Object? hints = freezed,}) {
  return _then(_Slide(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,imageURL: freezed == imageURL ? _self.imageURL : imageURL // ignore: cast_nullable_to_non_nullable
as String?,videoURL: freezed == videoURL ? _self.videoURL : videoURL // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SlideType,hints: freezed == hints ? _self._hints : hints // ignore: cast_nullable_to_non_nullable
as List<Hint>?,
  ));
}


}


/// @nodoc
mixin _$Hint {

 String? get imageURL; String? get title; String? get content;
/// Create a copy of Hint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HintCopyWith<Hint> get copyWith => _$HintCopyWithImpl<Hint>(this as Hint, _$identity);

  /// Serializes this Hint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Hint&&(identical(other.imageURL, imageURL) || other.imageURL == imageURL)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageURL,title,content);

@override
String toString() {
  return 'Hint(imageURL: $imageURL, title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class $HintCopyWith<$Res>  {
  factory $HintCopyWith(Hint value, $Res Function(Hint) _then) = _$HintCopyWithImpl;
@useResult
$Res call({
 String? imageURL, String? title, String? content
});




}
/// @nodoc
class _$HintCopyWithImpl<$Res>
    implements $HintCopyWith<$Res> {
  _$HintCopyWithImpl(this._self, this._then);

  final Hint _self;
  final $Res Function(Hint) _then;

/// Create a copy of Hint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageURL = freezed,Object? title = freezed,Object? content = freezed,}) {
  return _then(_self.copyWith(
imageURL: freezed == imageURL ? _self.imageURL : imageURL // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Hint].
extension HintPatterns on Hint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Hint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Hint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Hint value)  $default,){
final _that = this;
switch (_that) {
case _Hint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Hint value)?  $default,){
final _that = this;
switch (_that) {
case _Hint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? imageURL,  String? title,  String? content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Hint() when $default != null:
return $default(_that.imageURL,_that.title,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? imageURL,  String? title,  String? content)  $default,) {final _that = this;
switch (_that) {
case _Hint():
return $default(_that.imageURL,_that.title,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? imageURL,  String? title,  String? content)?  $default,) {final _that = this;
switch (_that) {
case _Hint() when $default != null:
return $default(_that.imageURL,_that.title,_that.content);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _Hint implements Hint {
  const _Hint({this.imageURL, this.title, this.content});
  factory _Hint.fromJson(Map<String, dynamic> json) => _$HintFromJson(json);

@override final  String? imageURL;
@override final  String? title;
@override final  String? content;

/// Create a copy of Hint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HintCopyWith<_Hint> get copyWith => __$HintCopyWithImpl<_Hint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HintToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Hint&&(identical(other.imageURL, imageURL) || other.imageURL == imageURL)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageURL,title,content);

@override
String toString() {
  return 'Hint(imageURL: $imageURL, title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class _$HintCopyWith<$Res> implements $HintCopyWith<$Res> {
  factory _$HintCopyWith(_Hint value, $Res Function(_Hint) _then) = __$HintCopyWithImpl;
@override @useResult
$Res call({
 String? imageURL, String? title, String? content
});




}
/// @nodoc
class __$HintCopyWithImpl<$Res>
    implements _$HintCopyWith<$Res> {
  __$HintCopyWithImpl(this._self, this._then);

  final _Hint _self;
  final $Res Function(_Hint) _then;

/// Create a copy of Hint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageURL = freezed,Object? title = freezed,Object? content = freezed,}) {
  return _then(_Hint(
imageURL: freezed == imageURL ? _self.imageURL : imageURL // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
