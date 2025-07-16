import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/v4.dart';

part 'room_model.freezed.dart';
part 'room_model.g.dart'; // only if you're using json_serializable

@freezed
abstract class RoomModel with _$RoomModel {
  const factory RoomModel({
    required String id,
    required String title,
    required String description,
    required int hours,
    required int minutes,
    // Add tag properties here
  }) = _RoomModel;

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);

  factory RoomModel.initial() {
    return RoomModel(
      id: const UuidV4().generate(),
      title: '',
      description: '',
      hours: 0,
      minutes: 0,
    );
  }
}
