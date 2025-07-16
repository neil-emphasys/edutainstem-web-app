part of 'room_create_bloc.dart';

@freezed
abstract class RoomCreateState with _$RoomCreateState {
  const factory RoomCreateState.initial(StepperModel<RoomModel> data) =
      _Initial;
}
