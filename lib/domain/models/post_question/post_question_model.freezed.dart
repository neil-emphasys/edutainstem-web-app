// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostQuestionModel {

 String get id;// ← not required anymore
 int get index; String get question;@JsonKey(unknownEnumValue: QuestionTypesEnum.multipleChoice) QuestionTypesEnum get type; bool get isFlagged; List<PostQuestionChoicesModel> get choices;@JsonKey(includeIfNull: false) PostQuestionChoicesModel? get answer;
/// Create a copy of PostQuestionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostQuestionModelCopyWith<PostQuestionModel> get copyWith => _$PostQuestionModelCopyWithImpl<PostQuestionModel>(this as PostQuestionModel, _$identity);

  /// Serializes this PostQuestionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostQuestionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.index, index) || other.index == index)&&(identical(other.question, question) || other.question == question)&&(identical(other.type, type) || other.type == type)&&(identical(other.isFlagged, isFlagged) || other.isFlagged == isFlagged)&&const DeepCollectionEquality().equals(other.choices, choices)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,index,question,type,isFlagged,const DeepCollectionEquality().hash(choices),answer);

@override
String toString() {
  return 'PostQuestionModel(id: $id, index: $index, question: $question, type: $type, isFlagged: $isFlagged, choices: $choices, answer: $answer)';
}


}

/// @nodoc
abstract mixin class $PostQuestionModelCopyWith<$Res>  {
  factory $PostQuestionModelCopyWith(PostQuestionModel value, $Res Function(PostQuestionModel) _then) = _$PostQuestionModelCopyWithImpl;
@useResult
$Res call({
 String id, int index, String question,@JsonKey(unknownEnumValue: QuestionTypesEnum.multipleChoice) QuestionTypesEnum type, bool isFlagged, List<PostQuestionChoicesModel> choices,@JsonKey(includeIfNull: false) PostQuestionChoicesModel? answer
});


$PostQuestionChoicesModelCopyWith<$Res>? get answer;

}
/// @nodoc
class _$PostQuestionModelCopyWithImpl<$Res>
    implements $PostQuestionModelCopyWith<$Res> {
  _$PostQuestionModelCopyWithImpl(this._self, this._then);

  final PostQuestionModel _self;
  final $Res Function(PostQuestionModel) _then;

/// Create a copy of PostQuestionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? index = null,Object? question = null,Object? type = null,Object? isFlagged = null,Object? choices = null,Object? answer = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as QuestionTypesEnum,isFlagged: null == isFlagged ? _self.isFlagged : isFlagged // ignore: cast_nullable_to_non_nullable
as bool,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<PostQuestionChoicesModel>,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as PostQuestionChoicesModel?,
  ));
}
/// Create a copy of PostQuestionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostQuestionChoicesModelCopyWith<$Res>? get answer {
    if (_self.answer == null) {
    return null;
  }

  return $PostQuestionChoicesModelCopyWith<$Res>(_self.answer!, (value) {
    return _then(_self.copyWith(answer: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostQuestionModel].
extension PostQuestionModelPatterns on PostQuestionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostQuestionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostQuestionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostQuestionModel value)  $default,){
final _that = this;
switch (_that) {
case _PostQuestionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostQuestionModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostQuestionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int index,  String question, @JsonKey(unknownEnumValue: QuestionTypesEnum.multipleChoice)  QuestionTypesEnum type,  bool isFlagged,  List<PostQuestionChoicesModel> choices, @JsonKey(includeIfNull: false)  PostQuestionChoicesModel? answer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostQuestionModel() when $default != null:
return $default(_that.id,_that.index,_that.question,_that.type,_that.isFlagged,_that.choices,_that.answer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int index,  String question, @JsonKey(unknownEnumValue: QuestionTypesEnum.multipleChoice)  QuestionTypesEnum type,  bool isFlagged,  List<PostQuestionChoicesModel> choices, @JsonKey(includeIfNull: false)  PostQuestionChoicesModel? answer)  $default,) {final _that = this;
switch (_that) {
case _PostQuestionModel():
return $default(_that.id,_that.index,_that.question,_that.type,_that.isFlagged,_that.choices,_that.answer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int index,  String question, @JsonKey(unknownEnumValue: QuestionTypesEnum.multipleChoice)  QuestionTypesEnum type,  bool isFlagged,  List<PostQuestionChoicesModel> choices, @JsonKey(includeIfNull: false)  PostQuestionChoicesModel? answer)?  $default,) {final _that = this;
switch (_that) {
case _PostQuestionModel() when $default != null:
return $default(_that.id,_that.index,_that.question,_that.type,_that.isFlagged,_that.choices,_that.answer);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _PostQuestionModel implements PostQuestionModel {
  const _PostQuestionModel({this.id = '', this.index = 0, this.question = '', @JsonKey(unknownEnumValue: QuestionTypesEnum.multipleChoice) this.type = QuestionTypesEnum.multipleChoice, this.isFlagged = false, final  List<PostQuestionChoicesModel> choices = const <PostQuestionChoicesModel>[], @JsonKey(includeIfNull: false) this.answer}): _choices = choices;
  factory _PostQuestionModel.fromJson(Map<String, dynamic> json) => _$PostQuestionModelFromJson(json);

@override@JsonKey() final  String id;
// ← not required anymore
@override@JsonKey() final  int index;
@override@JsonKey() final  String question;
@override@JsonKey(unknownEnumValue: QuestionTypesEnum.multipleChoice) final  QuestionTypesEnum type;
@override@JsonKey() final  bool isFlagged;
 final  List<PostQuestionChoicesModel> _choices;
@override@JsonKey() List<PostQuestionChoicesModel> get choices {
  if (_choices is EqualUnmodifiableListView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_choices);
}

@override@JsonKey(includeIfNull: false) final  PostQuestionChoicesModel? answer;

/// Create a copy of PostQuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostQuestionModelCopyWith<_PostQuestionModel> get copyWith => __$PostQuestionModelCopyWithImpl<_PostQuestionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostQuestionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostQuestionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.index, index) || other.index == index)&&(identical(other.question, question) || other.question == question)&&(identical(other.type, type) || other.type == type)&&(identical(other.isFlagged, isFlagged) || other.isFlagged == isFlagged)&&const DeepCollectionEquality().equals(other._choices, _choices)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,index,question,type,isFlagged,const DeepCollectionEquality().hash(_choices),answer);

@override
String toString() {
  return 'PostQuestionModel(id: $id, index: $index, question: $question, type: $type, isFlagged: $isFlagged, choices: $choices, answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$PostQuestionModelCopyWith<$Res> implements $PostQuestionModelCopyWith<$Res> {
  factory _$PostQuestionModelCopyWith(_PostQuestionModel value, $Res Function(_PostQuestionModel) _then) = __$PostQuestionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, int index, String question,@JsonKey(unknownEnumValue: QuestionTypesEnum.multipleChoice) QuestionTypesEnum type, bool isFlagged, List<PostQuestionChoicesModel> choices,@JsonKey(includeIfNull: false) PostQuestionChoicesModel? answer
});


@override $PostQuestionChoicesModelCopyWith<$Res>? get answer;

}
/// @nodoc
class __$PostQuestionModelCopyWithImpl<$Res>
    implements _$PostQuestionModelCopyWith<$Res> {
  __$PostQuestionModelCopyWithImpl(this._self, this._then);

  final _PostQuestionModel _self;
  final $Res Function(_PostQuestionModel) _then;

/// Create a copy of PostQuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? index = null,Object? question = null,Object? type = null,Object? isFlagged = null,Object? choices = null,Object? answer = freezed,}) {
  return _then(_PostQuestionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as QuestionTypesEnum,isFlagged: null == isFlagged ? _self.isFlagged : isFlagged // ignore: cast_nullable_to_non_nullable
as bool,choices: null == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as List<PostQuestionChoicesModel>,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as PostQuestionChoicesModel?,
  ));
}

/// Create a copy of PostQuestionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostQuestionChoicesModelCopyWith<$Res>? get answer {
    if (_self.answer == null) {
    return null;
  }

  return $PostQuestionChoicesModelCopyWith<$Res>(_self.answer!, (value) {
    return _then(_self.copyWith(answer: value));
  });
}
}


/// @nodoc
mixin _$PostQuestionChoicesModel {

 String get id; String get choice; bool get isCorrectChoice;
/// Create a copy of PostQuestionChoicesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostQuestionChoicesModelCopyWith<PostQuestionChoicesModel> get copyWith => _$PostQuestionChoicesModelCopyWithImpl<PostQuestionChoicesModel>(this as PostQuestionChoicesModel, _$identity);

  /// Serializes this PostQuestionChoicesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostQuestionChoicesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.choice, choice) || other.choice == choice)&&(identical(other.isCorrectChoice, isCorrectChoice) || other.isCorrectChoice == isCorrectChoice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,choice,isCorrectChoice);

@override
String toString() {
  return 'PostQuestionChoicesModel(id: $id, choice: $choice, isCorrectChoice: $isCorrectChoice)';
}


}

/// @nodoc
abstract mixin class $PostQuestionChoicesModelCopyWith<$Res>  {
  factory $PostQuestionChoicesModelCopyWith(PostQuestionChoicesModel value, $Res Function(PostQuestionChoicesModel) _then) = _$PostQuestionChoicesModelCopyWithImpl;
@useResult
$Res call({
 String id, String choice, bool isCorrectChoice
});




}
/// @nodoc
class _$PostQuestionChoicesModelCopyWithImpl<$Res>
    implements $PostQuestionChoicesModelCopyWith<$Res> {
  _$PostQuestionChoicesModelCopyWithImpl(this._self, this._then);

  final PostQuestionChoicesModel _self;
  final $Res Function(PostQuestionChoicesModel) _then;

/// Create a copy of PostQuestionChoicesModel
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


/// Adds pattern-matching-related methods to [PostQuestionChoicesModel].
extension PostQuestionChoicesModelPatterns on PostQuestionChoicesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostQuestionChoicesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostQuestionChoicesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostQuestionChoicesModel value)  $default,){
final _that = this;
switch (_that) {
case _PostQuestionChoicesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostQuestionChoicesModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostQuestionChoicesModel() when $default != null:
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
case _PostQuestionChoicesModel() when $default != null:
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
case _PostQuestionChoicesModel():
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
case _PostQuestionChoicesModel() when $default != null:
return $default(_that.id,_that.choice,_that.isCorrectChoice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostQuestionChoicesModel implements PostQuestionChoicesModel {
  const _PostQuestionChoicesModel({this.id = '', this.choice = '', this.isCorrectChoice = false});
  factory _PostQuestionChoicesModel.fromJson(Map<String, dynamic> json) => _$PostQuestionChoicesModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String choice;
@override@JsonKey() final  bool isCorrectChoice;

/// Create a copy of PostQuestionChoicesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostQuestionChoicesModelCopyWith<_PostQuestionChoicesModel> get copyWith => __$PostQuestionChoicesModelCopyWithImpl<_PostQuestionChoicesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostQuestionChoicesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostQuestionChoicesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.choice, choice) || other.choice == choice)&&(identical(other.isCorrectChoice, isCorrectChoice) || other.isCorrectChoice == isCorrectChoice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,choice,isCorrectChoice);

@override
String toString() {
  return 'PostQuestionChoicesModel(id: $id, choice: $choice, isCorrectChoice: $isCorrectChoice)';
}


}

/// @nodoc
abstract mixin class _$PostQuestionChoicesModelCopyWith<$Res> implements $PostQuestionChoicesModelCopyWith<$Res> {
  factory _$PostQuestionChoicesModelCopyWith(_PostQuestionChoicesModel value, $Res Function(_PostQuestionChoicesModel) _then) = __$PostQuestionChoicesModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String choice, bool isCorrectChoice
});




}
/// @nodoc
class __$PostQuestionChoicesModelCopyWithImpl<$Res>
    implements _$PostQuestionChoicesModelCopyWith<$Res> {
  __$PostQuestionChoicesModelCopyWithImpl(this._self, this._then);

  final _PostQuestionChoicesModel _self;
  final $Res Function(_PostQuestionChoicesModel) _then;

/// Create a copy of PostQuestionChoicesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? choice = null,Object? isCorrectChoice = null,}) {
  return _then(_PostQuestionChoicesModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,choice: null == choice ? _self.choice : choice // ignore: cast_nullable_to_non_nullable
as String,isCorrectChoice: null == isCorrectChoice ? _self.isCorrectChoice : isCorrectChoice // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ExamStatModel {

 PostQuestionModel get question; DifficultyEnum get difficulty;
/// Create a copy of ExamStatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamStatModelCopyWith<ExamStatModel> get copyWith => _$ExamStatModelCopyWithImpl<ExamStatModel>(this as ExamStatModel, _$identity);

  /// Serializes this ExamStatModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamStatModel&&(identical(other.question, question) || other.question == question)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,difficulty);

@override
String toString() {
  return 'ExamStatModel(question: $question, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class $ExamStatModelCopyWith<$Res>  {
  factory $ExamStatModelCopyWith(ExamStatModel value, $Res Function(ExamStatModel) _then) = _$ExamStatModelCopyWithImpl;
@useResult
$Res call({
 PostQuestionModel question, DifficultyEnum difficulty
});


$PostQuestionModelCopyWith<$Res> get question;

}
/// @nodoc
class _$ExamStatModelCopyWithImpl<$Res>
    implements $ExamStatModelCopyWith<$Res> {
  _$ExamStatModelCopyWithImpl(this._self, this._then);

  final ExamStatModel _self;
  final $Res Function(ExamStatModel) _then;

/// Create a copy of ExamStatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? question = null,Object? difficulty = null,}) {
  return _then(_self.copyWith(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as PostQuestionModel,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as DifficultyEnum,
  ));
}
/// Create a copy of ExamStatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostQuestionModelCopyWith<$Res> get question {
  
  return $PostQuestionModelCopyWith<$Res>(_self.question, (value) {
    return _then(_self.copyWith(question: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExamStatModel].
extension ExamStatModelPatterns on ExamStatModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamStatModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamStatModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamStatModel value)  $default,){
final _that = this;
switch (_that) {
case _ExamStatModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamStatModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExamStatModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PostQuestionModel question,  DifficultyEnum difficulty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamStatModel() when $default != null:
return $default(_that.question,_that.difficulty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PostQuestionModel question,  DifficultyEnum difficulty)  $default,) {final _that = this;
switch (_that) {
case _ExamStatModel():
return $default(_that.question,_that.difficulty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PostQuestionModel question,  DifficultyEnum difficulty)?  $default,) {final _that = this;
switch (_that) {
case _ExamStatModel() when $default != null:
return $default(_that.question,_that.difficulty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamStatModel implements ExamStatModel {
  const _ExamStatModel({required this.question, required this.difficulty});
  factory _ExamStatModel.fromJson(Map<String, dynamic> json) => _$ExamStatModelFromJson(json);

@override final  PostQuestionModel question;
@override final  DifficultyEnum difficulty;

/// Create a copy of ExamStatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamStatModelCopyWith<_ExamStatModel> get copyWith => __$ExamStatModelCopyWithImpl<_ExamStatModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamStatModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamStatModel&&(identical(other.question, question) || other.question == question)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,difficulty);

@override
String toString() {
  return 'ExamStatModel(question: $question, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class _$ExamStatModelCopyWith<$Res> implements $ExamStatModelCopyWith<$Res> {
  factory _$ExamStatModelCopyWith(_ExamStatModel value, $Res Function(_ExamStatModel) _then) = __$ExamStatModelCopyWithImpl;
@override @useResult
$Res call({
 PostQuestionModel question, DifficultyEnum difficulty
});


@override $PostQuestionModelCopyWith<$Res> get question;

}
/// @nodoc
class __$ExamStatModelCopyWithImpl<$Res>
    implements _$ExamStatModelCopyWith<$Res> {
  __$ExamStatModelCopyWithImpl(this._self, this._then);

  final _ExamStatModel _self;
  final $Res Function(_ExamStatModel) _then;

/// Create a copy of ExamStatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? question = null,Object? difficulty = null,}) {
  return _then(_ExamStatModel(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as PostQuestionModel,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as DifficultyEnum,
  ));
}

/// Create a copy of ExamStatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostQuestionModelCopyWith<$Res> get question {
  
  return $PostQuestionModelCopyWith<$Res>(_self.question, (value) {
    return _then(_self.copyWith(question: value));
  });
}
}

// dart format on
