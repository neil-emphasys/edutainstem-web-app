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

// required String id,
 String get title; String get description;@NumToInt() int get durationMinutes; AgeRange get ageRange; List<String> get tags; TheoryContent get theoryContent;/// Optional: keep Firestore doc id if you want it
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.ageRange, ageRange) || other.ageRange == ageRange)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.theoryContent, theoryContent) || other.theoryContent == theoryContent)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,durationMinutes,ageRange,const DeepCollectionEquality().hash(tags),theoryContent,id);

@override
String toString() {
  return 'LessonModel(title: $title, description: $description, durationMinutes: $durationMinutes, ageRange: $ageRange, tags: $tags, theoryContent: $theoryContent, id: $id)';
}


}

/// @nodoc
abstract mixin class $LessonModelCopyWith<$Res>  {
  factory $LessonModelCopyWith(LessonModel value, $Res Function(LessonModel) _then) = _$LessonModelCopyWithImpl;
@useResult
$Res call({
 String title, String description,@NumToInt() int durationMinutes, AgeRange ageRange, List<String> tags, TheoryContent theoryContent,@JsonKey(includeFromJson: false, includeToJson: false) String? id
});


$AgeRangeCopyWith<$Res> get ageRange;$TheoryContentCopyWith<$Res> get theoryContent;

}
/// @nodoc
class _$LessonModelCopyWithImpl<$Res>
    implements $LessonModelCopyWith<$Res> {
  _$LessonModelCopyWithImpl(this._self, this._then);

  final LessonModel _self;
  final $Res Function(LessonModel) _then;

/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? durationMinutes = null,Object? ageRange = null,Object? tags = null,Object? theoryContent = null,Object? id = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,ageRange: null == ageRange ? _self.ageRange : ageRange // ignore: cast_nullable_to_non_nullable
as AgeRange,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,theoryContent: null == theoryContent ? _self.theoryContent : theoryContent // ignore: cast_nullable_to_non_nullable
as TheoryContent,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description, @NumToInt()  int durationMinutes,  AgeRange ageRange,  List<String> tags,  TheoryContent theoryContent, @JsonKey(includeFromJson: false, includeToJson: false)  String? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonModel() when $default != null:
return $default(_that.title,_that.description,_that.durationMinutes,_that.ageRange,_that.tags,_that.theoryContent,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description, @NumToInt()  int durationMinutes,  AgeRange ageRange,  List<String> tags,  TheoryContent theoryContent, @JsonKey(includeFromJson: false, includeToJson: false)  String? id)  $default,) {final _that = this;
switch (_that) {
case _LessonModel():
return $default(_that.title,_that.description,_that.durationMinutes,_that.ageRange,_that.tags,_that.theoryContent,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description, @NumToInt()  int durationMinutes,  AgeRange ageRange,  List<String> tags,  TheoryContent theoryContent, @JsonKey(includeFromJson: false, includeToJson: false)  String? id)?  $default,) {final _that = this;
switch (_that) {
case _LessonModel() when $default != null:
return $default(_that.title,_that.description,_that.durationMinutes,_that.ageRange,_that.tags,_that.theoryContent,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonModel implements LessonModel {
  const _LessonModel({required this.title, required this.description, @NumToInt() required this.durationMinutes, required this.ageRange, required final  List<String> tags, required this.theoryContent, @JsonKey(includeFromJson: false, includeToJson: false) this.id}): _tags = tags;
  factory _LessonModel.fromJson(Map<String, dynamic> json) => _$LessonModelFromJson(json);

// required String id,
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.ageRange, ageRange) || other.ageRange == ageRange)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.theoryContent, theoryContent) || other.theoryContent == theoryContent)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,durationMinutes,ageRange,const DeepCollectionEquality().hash(_tags),theoryContent,id);

@override
String toString() {
  return 'LessonModel(title: $title, description: $description, durationMinutes: $durationMinutes, ageRange: $ageRange, tags: $tags, theoryContent: $theoryContent, id: $id)';
}


}

/// @nodoc
abstract mixin class _$LessonModelCopyWith<$Res> implements $LessonModelCopyWith<$Res> {
  factory _$LessonModelCopyWith(_LessonModel value, $Res Function(_LessonModel) _then) = __$LessonModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String description,@NumToInt() int durationMinutes, AgeRange ageRange, List<String> tags, TheoryContent theoryContent,@JsonKey(includeFromJson: false, includeToJson: false) String? id
});


@override $AgeRangeCopyWith<$Res> get ageRange;@override $TheoryContentCopyWith<$Res> get theoryContent;

}
/// @nodoc
class __$LessonModelCopyWithImpl<$Res>
    implements _$LessonModelCopyWith<$Res> {
  __$LessonModelCopyWithImpl(this._self, this._then);

  final _LessonModel _self;
  final $Res Function(_LessonModel) _then;

/// Create a copy of LessonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? durationMinutes = null,Object? ageRange = null,Object? tags = null,Object? theoryContent = null,Object? id = freezed,}) {
  return _then(_LessonModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,ageRange: null == ageRange ? _self.ageRange : ageRange // ignore: cast_nullable_to_non_nullable
as AgeRange,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,theoryContent: null == theoryContent ? _self.theoryContent : theoryContent // ignore: cast_nullable_to_non_nullable
as TheoryContent,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
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

 List<Slide> get basic;
/// Create a copy of TheoryContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TheoryContentCopyWith<TheoryContent> get copyWith => _$TheoryContentCopyWithImpl<TheoryContent>(this as TheoryContent, _$identity);

  /// Serializes this TheoryContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TheoryContent&&const DeepCollectionEquality().equals(other.basic, basic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(basic));

@override
String toString() {
  return 'TheoryContent(basic: $basic)';
}


}

/// @nodoc
abstract mixin class $TheoryContentCopyWith<$Res>  {
  factory $TheoryContentCopyWith(TheoryContent value, $Res Function(TheoryContent) _then) = _$TheoryContentCopyWithImpl;
@useResult
$Res call({
 List<Slide> basic
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
@pragma('vm:prefer-inline') @override $Res call({Object? basic = null,}) {
  return _then(_self.copyWith(
basic: null == basic ? _self.basic : basic // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Slide> basic)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TheoryContent() when $default != null:
return $default(_that.basic);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Slide> basic)  $default,) {final _that = this;
switch (_that) {
case _TheoryContent():
return $default(_that.basic);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Slide> basic)?  $default,) {final _that = this;
switch (_that) {
case _TheoryContent() when $default != null:
return $default(_that.basic);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TheoryContent implements TheoryContent {
  const _TheoryContent({required final  List<Slide> basic}): _basic = basic;
  factory _TheoryContent.fromJson(Map<String, dynamic> json) => _$TheoryContentFromJson(json);

 final  List<Slide> _basic;
@override List<Slide> get basic {
  if (_basic is EqualUnmodifiableListView) return _basic;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_basic);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TheoryContent&&const DeepCollectionEquality().equals(other._basic, _basic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_basic));

@override
String toString() {
  return 'TheoryContent(basic: $basic)';
}


}

/// @nodoc
abstract mixin class _$TheoryContentCopyWith<$Res> implements $TheoryContentCopyWith<$Res> {
  factory _$TheoryContentCopyWith(_TheoryContent value, $Res Function(_TheoryContent) _then) = __$TheoryContentCopyWithImpl;
@override @useResult
$Res call({
 List<Slide> basic
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
@override @pragma('vm:prefer-inline') $Res call({Object? basic = null,}) {
  return _then(_TheoryContent(
basic: null == basic ? _self._basic : basic // ignore: cast_nullable_to_non_nullable
as List<Slide>,
  ));
}


}


/// @nodoc
mixin _$Slide {

 String? get title; String? get content; String? get caption; String? get imageURL; String? get videoURL; String? get link; SlideType get type;
/// Create a copy of Slide
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SlideCopyWith<Slide> get copyWith => _$SlideCopyWithImpl<Slide>(this as Slide, _$identity);

  /// Serializes this Slide to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Slide&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.imageURL, imageURL) || other.imageURL == imageURL)&&(identical(other.videoURL, videoURL) || other.videoURL == videoURL)&&(identical(other.link, link) || other.link == link)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content,caption,imageURL,videoURL,link,type);

@override
String toString() {
  return 'Slide(title: $title, content: $content, caption: $caption, imageURL: $imageURL, videoURL: $videoURL, link: $link, type: $type)';
}


}

/// @nodoc
abstract mixin class $SlideCopyWith<$Res>  {
  factory $SlideCopyWith(Slide value, $Res Function(Slide) _then) = _$SlideCopyWithImpl;
@useResult
$Res call({
 String? title, String? content, String? caption, String? imageURL, String? videoURL, String? link, SlideType type
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
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? content = freezed,Object? caption = freezed,Object? imageURL = freezed,Object? videoURL = freezed,Object? link = freezed,Object? type = null,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,imageURL: freezed == imageURL ? _self.imageURL : imageURL // ignore: cast_nullable_to_non_nullable
as String?,videoURL: freezed == videoURL ? _self.videoURL : videoURL // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SlideType,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? content,  String? caption,  String? imageURL,  String? videoURL,  String? link,  SlideType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Slide() when $default != null:
return $default(_that.title,_that.content,_that.caption,_that.imageURL,_that.videoURL,_that.link,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? content,  String? caption,  String? imageURL,  String? videoURL,  String? link,  SlideType type)  $default,) {final _that = this;
switch (_that) {
case _Slide():
return $default(_that.title,_that.content,_that.caption,_that.imageURL,_that.videoURL,_that.link,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? content,  String? caption,  String? imageURL,  String? videoURL,  String? link,  SlideType type)?  $default,) {final _that = this;
switch (_that) {
case _Slide() when $default != null:
return $default(_that.title,_that.content,_that.caption,_that.imageURL,_that.videoURL,_that.link,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Slide implements Slide {
  const _Slide({this.title, this.content, this.caption, this.imageURL, this.videoURL, this.link, required this.type});
  factory _Slide.fromJson(Map<String, dynamic> json) => _$SlideFromJson(json);

@override final  String? title;
@override final  String? content;
@override final  String? caption;
@override final  String? imageURL;
@override final  String? videoURL;
@override final  String? link;
@override final  SlideType type;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Slide&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.imageURL, imageURL) || other.imageURL == imageURL)&&(identical(other.videoURL, videoURL) || other.videoURL == videoURL)&&(identical(other.link, link) || other.link == link)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content,caption,imageURL,videoURL,link,type);

@override
String toString() {
  return 'Slide(title: $title, content: $content, caption: $caption, imageURL: $imageURL, videoURL: $videoURL, link: $link, type: $type)';
}


}

/// @nodoc
abstract mixin class _$SlideCopyWith<$Res> implements $SlideCopyWith<$Res> {
  factory _$SlideCopyWith(_Slide value, $Res Function(_Slide) _then) = __$SlideCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? content, String? caption, String? imageURL, String? videoURL, String? link, SlideType type
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
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? content = freezed,Object? caption = freezed,Object? imageURL = freezed,Object? videoURL = freezed,Object? link = freezed,Object? type = null,}) {
  return _then(_Slide(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,imageURL: freezed == imageURL ? _self.imageURL : imageURL // ignore: cast_nullable_to_non_nullable
as String?,videoURL: freezed == videoURL ? _self.videoURL : videoURL // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SlideType,
  ));
}


}

// dart format on
