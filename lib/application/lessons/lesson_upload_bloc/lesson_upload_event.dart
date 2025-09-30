part of 'lesson_upload_bloc.dart';

@freezed
class LessonUploadEvent with _$LessonUploadEvent {
  const factory LessonUploadEvent.setInitialData({required int maxStep}) =
      _SetInitialData;
  const factory LessonUploadEvent.previousStep() = _PreviousStep;
  const factory LessonUploadEvent.nextStep() = _NextStep;
  const factory LessonUploadEvent.close() = _Close;
}
