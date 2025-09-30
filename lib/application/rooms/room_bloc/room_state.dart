part of 'room_bloc.dart';

@freezed
abstract class RoomState with _$RoomState {
  const factory RoomState.initial() = _Initial;
  const factory RoomState.loading() = _Loading;
  const factory RoomState.done({required List<RoomModel> rooms}) = _Done;
}
