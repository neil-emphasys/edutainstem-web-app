import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'help_request_model.freezed.dart';
part 'help_request_model.g.dart';

enum HelpQueueStatus { pending, done, canceled }

class TimestampConverter implements JsonConverter<DateTime?, Object?> {
  const TimestampConverter();
  @override
  DateTime? fromJson(Object? json) {
    if (json == null) return null;
    if (json is Timestamp) return json.toDate();
    if (json is DateTime) return json;
    if (json is String) return DateTime.parse(json);
    throw ArgumentError('Invalid timestamp: $json');
  }

  @override
  Object? toJson(DateTime? object) =>
      object == null ? null : Timestamp.fromDate(object);
}

@freezed
abstract class HelpRequestModel with _$HelpRequestModel {
  const factory HelpRequestModel({
    @Default('') String id,
    @Default('') String roomId,
    @Default('') String requesterId,
    @Default('') String requesterName,
    @Default('') String note, // optional short message
    @Default(HelpQueueStatus.pending) HelpQueueStatus status,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _HelpRequestModel;

  factory HelpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$HelpRequestModelFromJson(json);
}
