import 'package:bloc/bloc.dart';
import 'package:edutainstem/domain/models/lessons/lesson_model.dart';
import 'package:edutainstem/domain/models/steps/step_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_upload_bloc.freezed.dart';
part 'lesson_upload_event.dart';
part 'lesson_upload_state.dart';

class LessonUploadBloc extends Bloc<LessonUploadEvent, LessonUploadState> {
  LessonUploadBloc()
    : super(
        _Initial(StepperModel<LessonModel>.initial(LessonModel.initial())),
      ) {
    on<_SetInitialData>((event, emit) {
      final currentState = state as _Initial;

      emit(const _Loading());
      emit(_Initial(currentState.data.copyWith(maxStep: event.maxStep)));
    });

    on<_NextStep>((event, emit) async {
      final currentState = state as _Initial;
      final maxStep = currentState.data.maxStep;
      final currentStep = currentState.data.activeStep;
      final nextStep = currentStep + 1;

      if (currentStep == (maxStep - 1)) {
        emit(const _DoneLoading());
        await Future.delayed(const Duration(seconds: 3));
        emit(const _Done());
      } else {
        emit(
          _Initial(
            currentState.data.copyWith(
              activeStep: nextStep,
              previousStep: currentStep,
            ),
          ),
        );
      }
    });

    on<_PreviousStep>((event, emit) {
      final currentState = state as _Initial;
      final currentStep = currentState.data.activeStep;
      final prevStep = (currentStep > 0) ? currentStep - 1 : currentStep;

      emit(
        _Initial(
          currentState.data.copyWith(
            activeStep: prevStep,
            previousStep: currentStep,
          ),
        ),
      );
    });

    on<_Close>((event, emit) {
      emit(const _Closed());
    });
  }
}
