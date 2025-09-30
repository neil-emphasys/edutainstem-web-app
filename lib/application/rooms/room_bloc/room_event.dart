part of 'room_bloc.dart';

@freezed
abstract class RoomEvent with _$RoomEvent {
  const factory RoomEvent.started() = _Started;
  const factory RoomEvent.getRooms() = _GetRooms;
}
