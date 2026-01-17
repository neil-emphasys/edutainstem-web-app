// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessments_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestionModel {

 String get id; String get question; QuestionTypesEnum get type; bool get isFlagged; List<QuestionChoicesModel> get choices; QuestionChoicesModel? get answer;
/// Create a copy of QuestionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionModelCopyWith<QuestionModel> get copyWith => _$QuestionModelCopyWithImpl<QuestionModel>(this as QuestionModel, _$identity);

  /// Serializes this QuestionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.type, type) || other.type == type)&&(identical(other.isFlagged, isFlagged) || other.isFlagged == isFlagged)&&const DeepCollectionEquality().equals(other.choices, choices)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,type,isFlagged,const DeepCollectionEquality().hash(choices),answer);

@override
String toString() {
  return 'QuestionModel(id: $id, question: $question, type: $type, isFlagged: $isFlagged, choices: $choices, answer: $answer)';
}


}

/// @nodoc
abstract mixin class $QuestionModelCopyWith<$Res>  {
  factory $QuestionModelCopyWith(QuestionModel value, $Res Function(QuestionModel) _then) = _$QuestionModelCopyWithImpl;
@useResult
$Res call({
 String id, String question, QuestionTypesEnum type, bool isFlagged, List<QuestionChoicesModel> choices, QuestionChoicesModel? answer
});


$QuestionChoicesModelCopyWith<$Res>? get answer;

}
/// @nodoc
class _$QuestionModelCopyWithImpl<$Res>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._self, this._then);

  final QuestionModel _self;
  final $Res Function(QuestionModel) _then;

/// Create a copy of QuestionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? question = null,Object? type = null,Object? isFlagged = null,Object? choices = null,Object? answer = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as QuestionTypesEnum,isFlagged: null == isFlagged ? _self.isFlagged : isFlagged // ignore: cast_nullable_to_non_nullable
as bool,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<QuestionChoicesModel>,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as QuestionChoicesModel?,
  ));
}
/// Create a copy of QuestionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestionChoicesModelCopyWith<$Res>? get answer {
    if (_self.answer == null) {
    return null;
  }

  return $QuestionChoicesModelCopyWith<$Res>(_self.answer!, (value) {
    return _then(_self.copyWith(answer: value));
  });
}
}


/// Adds pattern-matching-related methods to [QuestionModel].
extension QuestionModelPatterns on QuestionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionModel value)  $default,){
final _that = this;
switch (_that) {
case _QuestionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String question,  QuestionTypesEnum type,  bool isFlagged,  List<QuestionChoicesModel> choices,  QuestionChoicesModel? answer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionModel() when $default != null:
return $default(_that.id,_that.question,_that.type,_that.isFlagged,_that.choices,_that.answer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String question,  QuestionTypesEnum type,  bool isFlagged,  List<QuestionChoicesModel> choices,  QuestionChoicesModel? answer)  $default,) {final _that = this;
switch (_that) {
case _QuestionModel():
return $default(_that.id,_that.question,_that.type,_that.isFlagged,_that.choices,_that.answer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String question,  QuestionTypesEnum type,  bool isFlagged,  List<QuestionChoicesModel> choices,  QuestionChoicesModel? answer)?  $default,) {final _that = this;
switch (_that) {
case _QuestionModel() when $default != null:
return $default(_that.id,_that.question,_that.type,_that.isFlagged,_that.choices,_that.answer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionModel implements QuestionModel {
  const _QuestionModel({required this.id, required this.question, required this.type, this.isFlagged = false, required final  List<QuestionChoicesModel> choices, this.answer}): _choices = choices;
  factory _QuestionModel.fromJson(Map<String, dynamic> json) => _$QuestionModelFromJson(json);

@override final  String id;
@override final  String question;
@override final  QuestionTypesEnum type;
@override@JsonKey() final  bool isFlagged;
 final  List<QuestionChoicesModel> _choices;
@override List<QuestionChoicesModel> get choices {
  if (_choices is EqualUnmodifiableListView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_choices);
}

@override final  QuestionChoicesModel? answer;

/// Create a copy of QuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionModelCopyWith<_QuestionModel> get copyWith => __$QuestionModelCopyWithImpl<_QuestionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.type, type) || other.type == type)&&(identical(other.isFlagged, isFlagged) || other.isFlagged == isFlagged)&&const DeepCollectionEquality().equals(other._choices, _choices)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,type,isFlagged,const DeepCollectionEquality().hash(_choices),answer);

@override
String toString() {
  return 'QuestionModel(id: $id, question: $question, type: $type, isFlagged: $isFlagged, choices: $choices, answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$QuestionModelCopyWith<$Res> implements $QuestionModelCopyWith<$Res> {
  factory _$QuestionModelCopyWith(_QuestionModel value, $Res Function(_QuestionModel) _then) = __$QuestionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String question, QuestionTypesEnum type, bool isFlagged, List<QuestionChoicesModel> choices, QuestionChoicesModel? answer
});


@override $QuestionChoicesModelCopyWith<$Res>? get answer;

}
/// @nodoc
class __$QuestionModelCopyWithImpl<$Res>
    implements _$QuestionModelCopyWith<$Res> {
  __$QuestionModelCopyWithImpl(this._self, this._then);

  final _QuestionModel _self;
  final $Res Function(_QuestionModel) _then;

/// Create a copy of QuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? question = null,Object? type = null,Object? isFlagged = null,Object? choices = null,Object? answer = freezed,}) {
  return _then(_QuestionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as QuestionTypesEnum,isFlagged: null == isFlagged ? _self.isFlagged : isFlagged // ignore: cast_nullable_to_non_nullable
as bool,choices: null == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as List<QuestionChoicesModel>,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as QuestionChoicesModel?,
  ));
}

/// Create a copy of QuestionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestionChoicesModelCopyWith<$Res>? get answer {
    if (_self.answer == null) {
    return null;
  }

  return $QuestionChoicesModelCopyWith<$Res>(_self.answer!, (value) {
    return _then(_self.copyWith(answer: value));
  });
}
}


/// @nodoc
mixin _$QuestionChoicesModel {

 String get id; String get choice;
/// Create a copy of QuestionChoicesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionChoicesModelCopyWith<QuestionChoicesModel> get copyWith => _$QuestionChoicesModelCopyWithImpl<QuestionChoicesModel>(this as QuestionChoicesModel, _$identity);

  /// Serializes this QuestionChoicesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionChoicesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.choice, choice) || other.choice == choice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,choice);

@override
String toString() {
  return 'QuestionChoicesModel(id: $id, choice: $choice)';
}


}

/// @nodoc
abstract mixin class $QuestionChoicesModelCopyWith<$Res>  {
  factory $QuestionChoicesModelCopyWith(QuestionChoicesModel value, $Res Function(QuestionChoicesModel) _then) = _$QuestionChoicesModelCopyWithImpl;
@useResult
$Res call({
 String id, String choice
});




}
/// @nodoc
class _$QuestionChoicesModelCopyWithImpl<$Res>
    implements $QuestionChoicesModelCopyWith<$Res> {
  _$QuestionChoicesModelCopyWithImpl(this._self, this._then);

  final QuestionChoicesModel _self;
  final $Res Function(QuestionChoicesModel) _then;

/// Create a copy of QuestionChoicesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? choice = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,choice: null == choice ? _self.choice : choice // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionChoicesModel].
extension QuestionChoicesModelPatterns on QuestionChoicesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionChoicesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionChoicesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionChoicesModel value)  $default,){
final _that = this;
switch (_that) {
case _QuestionChoicesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionChoicesModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionChoicesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String choice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionChoicesModel() when $default != null:
return $default(_that.id,_that.choice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String choice)  $default,) {final _that = this;
switch (_that) {
case _QuestionChoicesModel():
return $default(_that.id,_that.choice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String choice)?  $default,) {final _that = this;
switch (_that) {
case _QuestionChoicesModel() when $default != null:
return $default(_that.id,_that.choice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionChoicesModel implements QuestionChoicesModel {
  const _QuestionChoicesModel({required this.id, required this.choice});
  factory _QuestionChoicesModel.fromJson(Map<String, dynamic> json) => _$QuestionChoicesModelFromJson(json);

@override final  String id;
@override final  String choice;

/// Create a copy of QuestionChoicesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionChoicesModelCopyWith<_QuestionChoicesModel> get copyWith => __$QuestionChoicesModelCopyWithImpl<_QuestionChoicesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionChoicesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionChoicesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.choice, choice) || other.choice == choice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,choice);

@override
String toString() {
  return 'QuestionChoicesModel(id: $id, choice: $choice)';
}


}

/// @nodoc
abstract mixin class _$QuestionChoicesModelCopyWith<$Res> implements $QuestionChoicesModelCopyWith<$Res> {
  factory _$QuestionChoicesModelCopyWith(_QuestionChoicesModel value, $Res Function(_QuestionChoicesModel) _then) = __$QuestionChoicesModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String choice
});




}
/// @nodoc
class __$QuestionChoicesModelCopyWithImpl<$Res>
    implements _$QuestionChoicesModelCopyWith<$Res> {
  __$QuestionChoicesModelCopyWithImpl(this._self, this._then);

  final _QuestionChoicesModel _self;
  final $Res Function(_QuestionChoicesModel) _then;

/// Create a copy of QuestionChoicesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? choice = null,}) {
  return _then(_QuestionChoicesModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,choice: null == choice ? _self.choice : choice // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PollChoice {

 String get cid; String get label; int get count; String? get subLabel;@JsonKey(includeFromJson: false, includeToJson: false) Color? get color; bool get isAnswer;
/// Create a copy of PollChoice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollChoiceCopyWith<PollChoice> get copyWith => _$PollChoiceCopyWithImpl<PollChoice>(this as PollChoice, _$identity);

  /// Serializes this PollChoice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollChoice&&(identical(other.cid, cid) || other.cid == cid)&&(identical(other.label, label) || other.label == label)&&(identical(other.count, count) || other.count == count)&&(identical(other.subLabel, subLabel) || other.subLabel == subLabel)&&(identical(other.color, color) || other.color == color)&&(identical(other.isAnswer, isAnswer) || other.isAnswer == isAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cid,label,count,subLabel,color,isAnswer);

@override
String toString() {
  return 'PollChoice(cid: $cid, label: $label, count: $count, subLabel: $subLabel, color: $color, isAnswer: $isAnswer)';
}


}

/// @nodoc
abstract mixin class $PollChoiceCopyWith<$Res>  {
  factory $PollChoiceCopyWith(PollChoice value, $Res Function(PollChoice) _then) = _$PollChoiceCopyWithImpl;
@useResult
$Res call({
 String cid, String label, int count, String? subLabel,@JsonKey(includeFromJson: false, includeToJson: false) Color? color, bool isAnswer
});




}
/// @nodoc
class _$PollChoiceCopyWithImpl<$Res>
    implements $PollChoiceCopyWith<$Res> {
  _$PollChoiceCopyWithImpl(this._self, this._then);

  final PollChoice _self;
  final $Res Function(PollChoice) _then;

/// Create a copy of PollChoice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cid = null,Object? label = null,Object? count = null,Object? subLabel = freezed,Object? color = freezed,Object? isAnswer = null,}) {
  return _then(_self.copyWith(
cid: null == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,subLabel: freezed == subLabel ? _self.subLabel : subLabel // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,isAnswer: null == isAnswer ? _self.isAnswer : isAnswer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PollChoice].
extension PollChoicePatterns on PollChoice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PollChoice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PollChoice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PollChoice value)  $default,){
final _that = this;
switch (_that) {
case _PollChoice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PollChoice value)?  $default,){
final _that = this;
switch (_that) {
case _PollChoice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cid,  String label,  int count,  String? subLabel, @JsonKey(includeFromJson: false, includeToJson: false)  Color? color,  bool isAnswer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PollChoice() when $default != null:
return $default(_that.cid,_that.label,_that.count,_that.subLabel,_that.color,_that.isAnswer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cid,  String label,  int count,  String? subLabel, @JsonKey(includeFromJson: false, includeToJson: false)  Color? color,  bool isAnswer)  $default,) {final _that = this;
switch (_that) {
case _PollChoice():
return $default(_that.cid,_that.label,_that.count,_that.subLabel,_that.color,_that.isAnswer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cid,  String label,  int count,  String? subLabel, @JsonKey(includeFromJson: false, includeToJson: false)  Color? color,  bool isAnswer)?  $default,) {final _that = this;
switch (_that) {
case _PollChoice() when $default != null:
return $default(_that.cid,_that.label,_that.count,_that.subLabel,_that.color,_that.isAnswer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PollChoice implements PollChoice {
  const _PollChoice({this.cid = '', required this.label, required this.count, this.subLabel, @JsonKey(includeFromJson: false, includeToJson: false) this.color, this.isAnswer = false});
  factory _PollChoice.fromJson(Map<String, dynamic> json) => _$PollChoiceFromJson(json);

@override@JsonKey() final  String cid;
@override final  String label;
@override final  int count;
@override final  String? subLabel;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  Color? color;
@override@JsonKey() final  bool isAnswer;

/// Create a copy of PollChoice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollChoiceCopyWith<_PollChoice> get copyWith => __$PollChoiceCopyWithImpl<_PollChoice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PollChoiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PollChoice&&(identical(other.cid, cid) || other.cid == cid)&&(identical(other.label, label) || other.label == label)&&(identical(other.count, count) || other.count == count)&&(identical(other.subLabel, subLabel) || other.subLabel == subLabel)&&(identical(other.color, color) || other.color == color)&&(identical(other.isAnswer, isAnswer) || other.isAnswer == isAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cid,label,count,subLabel,color,isAnswer);

@override
String toString() {
  return 'PollChoice(cid: $cid, label: $label, count: $count, subLabel: $subLabel, color: $color, isAnswer: $isAnswer)';
}


}

/// @nodoc
abstract mixin class _$PollChoiceCopyWith<$Res> implements $PollChoiceCopyWith<$Res> {
  factory _$PollChoiceCopyWith(_PollChoice value, $Res Function(_PollChoice) _then) = __$PollChoiceCopyWithImpl;
@override @useResult
$Res call({
 String cid, String label, int count, String? subLabel,@JsonKey(includeFromJson: false, includeToJson: false) Color? color, bool isAnswer
});




}
/// @nodoc
class __$PollChoiceCopyWithImpl<$Res>
    implements _$PollChoiceCopyWith<$Res> {
  __$PollChoiceCopyWithImpl(this._self, this._then);

  final _PollChoice _self;
  final $Res Function(_PollChoice) _then;

/// Create a copy of PollChoice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cid = null,Object? label = null,Object? count = null,Object? subLabel = freezed,Object? color = freezed,Object? isAnswer = null,}) {
  return _then(_PollChoice(
cid: null == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,subLabel: freezed == subLabel ? _self.subLabel : subLabel // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,isAnswer: null == isAnswer ? _self.isAnswer : isAnswer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$PollChoiceGroup {

 String get qid; String get question; QuestionTypesEnum get type; List<PollChoice> get choices;
/// Create a copy of PollChoiceGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollChoiceGroupCopyWith<PollChoiceGroup> get copyWith => _$PollChoiceGroupCopyWithImpl<PollChoiceGroup>(this as PollChoiceGroup, _$identity);

  /// Serializes this PollChoiceGroup to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollChoiceGroup&&(identical(other.qid, qid) || other.qid == qid)&&(identical(other.question, question) || other.question == question)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.choices, choices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qid,question,type,const DeepCollectionEquality().hash(choices));

@override
String toString() {
  return 'PollChoiceGroup(qid: $qid, question: $question, type: $type, choices: $choices)';
}


}

/// @nodoc
abstract mixin class $PollChoiceGroupCopyWith<$Res>  {
  factory $PollChoiceGroupCopyWith(PollChoiceGroup value, $Res Function(PollChoiceGroup) _then) = _$PollChoiceGroupCopyWithImpl;
@useResult
$Res call({
 String qid, String question, QuestionTypesEnum type, List<PollChoice> choices
});




}
/// @nodoc
class _$PollChoiceGroupCopyWithImpl<$Res>
    implements $PollChoiceGroupCopyWith<$Res> {
  _$PollChoiceGroupCopyWithImpl(this._self, this._then);

  final PollChoiceGroup _self;
  final $Res Function(PollChoiceGroup) _then;

/// Create a copy of PollChoiceGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? qid = null,Object? question = null,Object? type = null,Object? choices = null,}) {
  return _then(_self.copyWith(
qid: null == qid ? _self.qid : qid // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as QuestionTypesEnum,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<PollChoice>,
  ));
}

}


/// Adds pattern-matching-related methods to [PollChoiceGroup].
extension PollChoiceGroupPatterns on PollChoiceGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PollChoiceGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PollChoiceGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PollChoiceGroup value)  $default,){
final _that = this;
switch (_that) {
case _PollChoiceGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PollChoiceGroup value)?  $default,){
final _that = this;
switch (_that) {
case _PollChoiceGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String qid,  String question,  QuestionTypesEnum type,  List<PollChoice> choices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PollChoiceGroup() when $default != null:
return $default(_that.qid,_that.question,_that.type,_that.choices);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String qid,  String question,  QuestionTypesEnum type,  List<PollChoice> choices)  $default,) {final _that = this;
switch (_that) {
case _PollChoiceGroup():
return $default(_that.qid,_that.question,_that.type,_that.choices);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String qid,  String question,  QuestionTypesEnum type,  List<PollChoice> choices)?  $default,) {final _that = this;
switch (_that) {
case _PollChoiceGroup() when $default != null:
return $default(_that.qid,_that.question,_that.type,_that.choices);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PollChoiceGroup implements PollChoiceGroup {
  const _PollChoiceGroup({this.qid = '', required this.question, required this.type, required final  List<PollChoice> choices}): _choices = choices;
  factory _PollChoiceGroup.fromJson(Map<String, dynamic> json) => _$PollChoiceGroupFromJson(json);

@override@JsonKey() final  String qid;
@override final  String question;
@override final  QuestionTypesEnum type;
 final  List<PollChoice> _choices;
@override List<PollChoice> get choices {
  if (_choices is EqualUnmodifiableListView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_choices);
}


/// Create a copy of PollChoiceGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollChoiceGroupCopyWith<_PollChoiceGroup> get copyWith => __$PollChoiceGroupCopyWithImpl<_PollChoiceGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PollChoiceGroupToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PollChoiceGroup&&(identical(other.qid, qid) || other.qid == qid)&&(identical(other.question, question) || other.question == question)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._choices, _choices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qid,question,type,const DeepCollectionEquality().hash(_choices));

@override
String toString() {
  return 'PollChoiceGroup(qid: $qid, question: $question, type: $type, choices: $choices)';
}


}

/// @nodoc
abstract mixin class _$PollChoiceGroupCopyWith<$Res> implements $PollChoiceGroupCopyWith<$Res> {
  factory _$PollChoiceGroupCopyWith(_PollChoiceGroup value, $Res Function(_PollChoiceGroup) _then) = __$PollChoiceGroupCopyWithImpl;
@override @useResult
$Res call({
 String qid, String question, QuestionTypesEnum type, List<PollChoice> choices
});




}
/// @nodoc
class __$PollChoiceGroupCopyWithImpl<$Res>
    implements _$PollChoiceGroupCopyWith<$Res> {
  __$PollChoiceGroupCopyWithImpl(this._self, this._then);

  final _PollChoiceGroup _self;
  final $Res Function(_PollChoiceGroup) _then;

/// Create a copy of PollChoiceGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? qid = null,Object? question = null,Object? type = null,Object? choices = null,}) {
  return _then(_PollChoiceGroup(
qid: null == qid ? _self.qid : qid // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as QuestionTypesEnum,choices: null == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as List<PollChoice>,
  ));
}


}

// dart format on
