// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoomModel _$RoomModelFromJson(Map<String, dynamic> json) => _RoomModel(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  hours: (json['hours'] as num).toInt(),
  minutes: (json['minutes'] as num).toInt(),
);

Map<String, dynamic> _$RoomModelToJson(_RoomModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'hours': instance.hours,
      'minutes': instance.minutes,
    };
