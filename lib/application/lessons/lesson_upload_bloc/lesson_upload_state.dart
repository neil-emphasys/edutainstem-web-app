part of 'lesson_upload_bloc.dart';

@freezed
abstract class LessonUploadState with _$LessonUploadState {
  const factory LessonUploadState.initial(StepperModel<LessonModel> data) =
      _Initial;
  const factory LessonUploadState.loading() = _Loading;
  const factory LessonUploadState.doneLoading() = _DoneLoading;
  const factory LessonUploadState.done() = _Done;
  const factory LessonUploadState.closed() = _Closed;
}
