// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StepModel _$StepModelFromJson(Map<String, dynamic> json) => _StepModel(
  title: json['title'] as String,
  customStep: json['customStep'] as String?,
  isDone: json['isDone'] as bool? ?? false,
);

Map<String, dynamic> _$StepModelToJson(_StepModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'customStep': instance.customStep,
      'isDone': instance.isDone,
    };

_StepperModel<T> _$StepperModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _StepperModel<T>(
  activeStep: (json['activeStep'] as num).toInt(),
  previousStep: (json['previousStep'] as num).toInt(),
  maxReachedStep: (json['maxReachedStep'] as num).toInt(),
  maxStep: (json['maxStep'] as num).toInt(),
  data: fromJsonT(json['data']),
);

Map<String, dynamic> _$StepperModelToJson<T>(
  _StepperModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'activeStep': instance.activeStep,
  'previousStep': instance.previousStep,
  'maxReachedStep': instance.maxReachedStep,
  'maxStep': instance.maxStep,
  'data': toJsonT(instance.data),
};
