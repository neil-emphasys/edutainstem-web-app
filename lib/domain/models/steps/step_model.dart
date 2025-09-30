import 'package:freezed_annotation/freezed_annotation.dart';

part 'step_model.freezed.dart';
part 'step_model.g.dart'; // only if you're using json_serializable

@freezed
abstract class StepModel with _$StepModel {
  const factory StepModel({
    required String title,
    String? customStep,
    @Default(false) bool isDone,
  }) = _StepModel;

  factory StepModel.fromJson(Map<String, dynamic> json) =>
      _$StepModelFromJson(json);
}

@Freezed(genericArgumentFactories: true)
abstract class StepperModel<T> with _$StepperModel<T> {
  const factory StepperModel({
    required int activeStep,
    required int previousStep,
    required int maxReachedStep,
    required int maxStep,
    required T data,
  }) = _StepperModel<T>;

  factory StepperModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$StepperModelFromJson(json, fromJsonT);

  factory StepperModel.initial(T initialData) {
    return StepperModel(
      activeStep: 0,
      previousStep: 0,
      maxReachedStep: 0,
      maxStep: 0,
      data: initialData,
    );
  }
}

T _fromJsonT<T>(Object? json) => json as T;
Object? _toJsonT<T>(T object) => object;
