part of 'room_create_bloc.dart';

@freezed
abstract class RoomCreateState with _$RoomCreateState {
  const factory RoomCreateState.initial(StepperModel<RoomModel> data) =
      _Initial;
  const factory RoomCreateState.loading({String? loaderString}) = _Loading;
  const factory RoomCreateState.doneLoading() = _DoneLoading;
  const factory RoomCreateState.done(
    StepperModel<RoomModel> data, {
    @Default([]) List<LessonModel> lessons,
  }) = _Done;
  const factory RoomCreateState.created(
    RoomModel data, {
    @Default(false) bool refetch,
  }) = _Created;
  const factory RoomCreateState.closed(
    RoomModel data, {
    @Default(false) bool refetch,
    @Default(false) bool isDifficultyView,
  }) = _Closed;
}
