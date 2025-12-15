// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HelpRequestModel _$HelpRequestModelFromJson(Map<String, dynamic> json) =>
    _HelpRequestModel(
      id: json['id'] as String? ?? '',
      roomId: json['roomId'] as String? ?? '',
      requesterId: json['requesterId'] as String? ?? '',
      requesterName: json['requesterName'] as String? ?? '',
      note: json['note'] as String? ?? '',
      status:
          $enumDecodeNullable(_$HelpQueueStatusEnumMap, json['status']) ??
          HelpQueueStatus.pending,
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      updatedAt: const TimestampConverter().fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$HelpRequestModelToJson(_HelpRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomId': instance.roomId,
      'requesterId': instance.requesterId,
      'requesterName': instance.requesterName,
      'note': instance.note,
      'status': _$HelpQueueStatusEnumMap[instance.status]!,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
    };

const _$HelpQueueStatusEnumMap = {
  HelpQueueStatus.pending: 'pending',
  HelpQueueStatus.done: 'done',
  HelpQueueStatus.canceled: 'canceled',
};
