// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'help_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HelpRequestModel {

 String get id; String get roomId; String get requesterId; String get requesterName; String get note;// optional short message
 HelpQueueStatus get status;@TimestampConverter() DateTime? get createdAt;@TimestampConverter() DateTime? get updatedAt;
/// Create a copy of HelpRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HelpRequestModelCopyWith<HelpRequestModel> get copyWith => _$HelpRequestModelCopyWithImpl<HelpRequestModel>(this as HelpRequestModel, _$identity);

  /// Serializes this HelpRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HelpRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.requesterName, requesterName) || other.requesterName == requesterName)&&(identical(other.note, note) || other.note == note)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roomId,requesterId,requesterName,note,status,createdAt,updatedAt);

@override
String toString() {
  return 'HelpRequestModel(id: $id, roomId: $roomId, requesterId: $requesterId, requesterName: $requesterName, note: $note, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $HelpRequestModelCopyWith<$Res>  {
  factory $HelpRequestModelCopyWith(HelpRequestModel value, $Res Function(HelpRequestModel) _then) = _$HelpRequestModelCopyWithImpl;
@useResult
$Res call({
 String id, String roomId, String requesterId, String requesterName, String note, HelpQueueStatus status,@TimestampConverter() DateTime? createdAt,@TimestampConverter() DateTime? updatedAt
});




}
/// @nodoc
class _$HelpRequestModelCopyWithImpl<$Res>
    implements $HelpRequestModelCopyWith<$Res> {
  _$HelpRequestModelCopyWithImpl(this._self, this._then);

  final HelpRequestModel _self;
  final $Res Function(HelpRequestModel) _then;

/// Create a copy of HelpRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? roomId = null,Object? requesterId = null,Object? requesterName = null,Object? note = null,Object? status = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,requesterName: null == requesterName ? _self.requesterName : requesterName // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HelpQueueStatus,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [HelpRequestModel].
extension HelpRequestModelPatterns on HelpRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HelpRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HelpRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HelpRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _HelpRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HelpRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _HelpRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String roomId,  String requesterId,  String requesterName,  String note,  HelpQueueStatus status, @TimestampConverter()  DateTime? createdAt, @TimestampConverter()  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HelpRequestModel() when $default != null:
return $default(_that.id,_that.roomId,_that.requesterId,_that.requesterName,_that.note,_that.status,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String roomId,  String requesterId,  String requesterName,  String note,  HelpQueueStatus status, @TimestampConverter()  DateTime? createdAt, @TimestampConverter()  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _HelpRequestModel():
return $default(_that.id,_that.roomId,_that.requesterId,_that.requesterName,_that.note,_that.status,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String roomId,  String requesterId,  String requesterName,  String note,  HelpQueueStatus status, @TimestampConverter()  DateTime? createdAt, @TimestampConverter()  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _HelpRequestModel() when $default != null:
return $default(_that.id,_that.roomId,_that.requesterId,_that.requesterName,_that.note,_that.status,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HelpRequestModel implements HelpRequestModel {
  const _HelpRequestModel({this.id = '', this.roomId = '', this.requesterId = '', this.requesterName = '', this.note = '', this.status = HelpQueueStatus.pending, @TimestampConverter() this.createdAt, @TimestampConverter() this.updatedAt});
  factory _HelpRequestModel.fromJson(Map<String, dynamic> json) => _$HelpRequestModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String roomId;
@override@JsonKey() final  String requesterId;
@override@JsonKey() final  String requesterName;
@override@JsonKey() final  String note;
// optional short message
@override@JsonKey() final  HelpQueueStatus status;
@override@TimestampConverter() final  DateTime? createdAt;
@override@TimestampConverter() final  DateTime? updatedAt;

/// Create a copy of HelpRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HelpRequestModelCopyWith<_HelpRequestModel> get copyWith => __$HelpRequestModelCopyWithImpl<_HelpRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HelpRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HelpRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.requesterName, requesterName) || other.requesterName == requesterName)&&(identical(other.note, note) || other.note == note)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roomId,requesterId,requesterName,note,status,createdAt,updatedAt);

@override
String toString() {
  return 'HelpRequestModel(id: $id, roomId: $roomId, requesterId: $requesterId, requesterName: $requesterName, note: $note, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$HelpRequestModelCopyWith<$Res> implements $HelpRequestModelCopyWith<$Res> {
  factory _$HelpRequestModelCopyWith(_HelpRequestModel value, $Res Function(_HelpRequestModel) _then) = __$HelpRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String roomId, String requesterId, String requesterName, String note, HelpQueueStatus status,@TimestampConverter() DateTime? createdAt,@TimestampConverter() DateTime? updatedAt
});




}
/// @nodoc
class __$HelpRequestModelCopyWithImpl<$Res>
    implements _$HelpRequestModelCopyWith<$Res> {
  __$HelpRequestModelCopyWithImpl(this._self, this._then);

  final _HelpRequestModel _self;
  final $Res Function(_HelpRequestModel) _then;

/// Create a copy of HelpRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? roomId = null,Object? requesterId = null,Object? requesterName = null,Object? note = null,Object? status = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_HelpRequestModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,requesterName: null == requesterName ? _self.requesterName : requesterName // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HelpQueueStatus,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
