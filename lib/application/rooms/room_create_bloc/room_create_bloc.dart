import 'package:bloc/bloc.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:edutainstem/domain/models/steps/step_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_create_bloc.freezed.dart';
part 'room_create_event.dart';
part 'room_create_state.dart';

class RoomCreateBloc extends Bloc<RoomCreateEvent, RoomCreateState> {
  RoomCreateBloc()
    : super(_Initial(StepperModel<RoomModel>.initial(RoomModel.initial()))) {
    on<_NextStep>((event, emit) {
      final currentState = state as _Initial;
      final currentStep = currentState.data.activeStep;
      final nextStep = currentStep + 1;

      emit(
        _Initial(
          currentState.data.copyWith(
            activeStep: nextStep,
            previousStep: currentStep,
          ),
        ),
      );
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
  }
}
