part of 'room_create_bloc.dart';

@freezed
abstract class RoomCreateEvent with _$RoomCreateEvent {
  const factory RoomCreateEvent.setInitialData({required int maxStep}) =
      _SetInitialData;
  const factory RoomCreateEvent.previousStep() = _PreviousStep;
  const factory RoomCreateEvent.nextStep({
    String? title,
    String? description,
    int? duration,
    List<String>? preferredLessons,
  }) = _NextStep;
  const factory RoomCreateEvent.createRoom() = _CreateRoom;
  const factory RoomCreateEvent.setRoom(RoomModel room) = _SetRoom;
  const factory RoomCreateEvent.close(RoomModel room) = _Close;
  const factory RoomCreateEvent.reOpen() = _ReOpen;
  const factory RoomCreateEvent.switchCloseView({
    @Default(false) bool isDifficultyView,
  }) = _SwitchCloseView;
}
