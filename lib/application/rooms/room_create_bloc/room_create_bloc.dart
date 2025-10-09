import 'package:bloc/bloc.dart';
import 'package:edutainstem/domain/models/lessons/lesson_model.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:edutainstem/domain/models/steps/step_model.dart';
import 'package:edutainstem/domain/repositories/room_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_create_bloc.freezed.dart';
part 'room_create_event.dart';
part 'room_create_state.dart';

class RoomCreateBloc extends Bloc<RoomCreateEvent, RoomCreateState> {
  final RoomRepository roomRepository;

  RoomCreateBloc(this.roomRepository)
    : super(_Initial(StepperModel<RoomModel>.initial(RoomModel.initial()))) {
    on<_SetInitialData>((event, emit) async {
      final currentState = state as _Initial;
      emit(const _Loading(loaderString: 'Setting Up Room. Please Wait...'));

      final lessons = await roomRepository.getLessons();
      lessons.fold((l) {}, (r) {});

      emit(
        _Done(
          currentState.data.copyWith(maxStep: event.maxStep),
          lessons: lessons.fold((l) => [], (r) => r.data),
        ),
      );
    });

    on<_NextStep>((event, emit) async {
      final currentState = state as _Done;
      final maxStep = currentState.data.maxStep;
      final currentStep = currentState.data.activeStep;
      final nextStep = currentStep + 1;

      if (currentStep == (maxStep - 1)) {
        emit(const _DoneLoading());
        await Future.delayed(const Duration(seconds: 3));
        emit(_Done(currentState.data));
      } else {
        emit(
          currentState.copyWith(
            data: currentState.data.copyWith(
              activeStep: nextStep,
              previousStep: currentStep,
              data: currentState.data.data.copyWith(
                title: (event.title != null)
                    ? event.title!
                    : currentState.data.data.title,
                description: (event.description != null)
                    ? event.description!
                    : currentState.data.data.description,
                duration: (event.duration != null)
                    ? event.duration!
                    : currentState.data.data.duration,
                preferredLessons: (event.preferredLessons != null)
                    ? event.preferredLessons!
                    : currentState.data.data.preferredLessons,
              ),
            ),
          ),
        );
      }
    });

    on<_PreviousStep>((event, emit) {
      final currentState = state as _Done;
      final currentStep = currentState.data.activeStep;
      final prevStep = (currentStep > 0) ? currentStep - 1 : currentStep;

      emit(
        currentState.copyWith(
          data: currentState.data.copyWith(
            activeStep: prevStep,
            previousStep: currentStep,
          ),
        ),
      );
    });

    on<_SetRoom>((event, emit) async {
      // final currentState = state as _Initial;
      if (event.room.isAssessmentOpen || event.room.isLessonOpen) {
        emit(_Closed(event.room));
      } else {
        emit(_Created(event.room));
      }
    });

    on<_CreateRoom>((event, emit) async {
      final currentState = state as _Done;

      emit(const _Loading(loaderString: 'Creating Room...'));

      final result = await roomRepository.createRoom(
        room: currentState.data.data,
      );

      result.fold((l) {}, (r) {
        if (r.data != null) {
          emit(_Created(r.data!, refetch: true));
        }
      });
    });

    on<_Close>((event, emit) async {
      final currentState = state as _Created;
      emit(const _Loading(loaderString: 'Closing Room...'));

      final lessons = await roomRepository.updateRoomStatus(room: event.room);
      lessons.fold((l) {}, (r) {
        emit(_Closed(event.room, refetch: true));
      });
    });

    on<_ReOpen>((event, emit) async {
      final currentState = state as _Closed;
      emit(const _Loading(loaderString: 'Reopening Room...'));

      final lessons = await roomRepository.updateRoomStatus(
        room: currentState.data,
        reOpen: true,
      );
      lessons.fold((l) {}, (r) {
        emit(_Created(currentState.data, refetch: true));
      });
    });

    on<_StartLesson>((event, emit) async {
      final currentState = state as _Closed;
      emit(
        const _Loading(
          loaderString: 'Finalizing Difficulty Modifiers. Starting Lesson...',
        ),
      );

      final lessons = await roomRepository.updateRoomStatus(
        room: currentState.data,
        openLesson: true,
      );
      lessons.fold((l) {}, (r) {
        emit(_Closed(currentState.data, refetch: true));
      });
    });

    on<_SwitchCloseView>((event, emit) async {
      final currentState = state as _Closed;
      emit(
        currentState.copyWith(
          isDifficultyView: !currentState.isDifficultyView,
          refetch: false,
        ),
      );
    });

    on<_UpdateEnrollmentsDifficulty>((event, emit) async {
      final result = await roomRepository.applyDifficultyChanges(
        // roomId: currentState.data.id ?? '',
        roomId: event.room.id ?? '',
        enrollments: event._enrollments,
      );
    });
  }
}
