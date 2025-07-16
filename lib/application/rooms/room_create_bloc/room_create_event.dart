part of 'room_create_bloc.dart';

@freezed
class RoomCreateEvent with _$RoomCreateEvent {
  const factory RoomCreateEvent.previousStep() = _PreviousStep;
  const factory RoomCreateEvent.nextStep() = _NextStep;
}
