import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/v4.dart';

part 'assessments_model.freezed.dart';
part 'assessments_model.g.dart';

@freezed
abstract class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    required String id,
    required String question,
    required QuestionTypesEnum type,
    @Default(false) bool isFlagged,
    required List<QuestionChoicesModel> choices,
    QuestionChoicesModel? answer,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  factory QuestionModel.initial() {
    return QuestionModel(
      id: const UuidV4().generate(),
      question: '',
      type: QuestionTypesEnum.multipleChoice,
      choices: [],
    );
  }
}

@freezed
abstract class QuestionChoicesModel with _$QuestionChoicesModel {
  const factory QuestionChoicesModel({
    required String id,
    required String choice,
  }) = _QuestionChoicesModel;

  factory QuestionChoicesModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionChoicesModelFromJson(json);

  factory QuestionChoicesModel.initial() {
    return QuestionChoicesModel(id: const UuidV4().generate(), choice: '');
  }
}

List<QuestionModel> mapQuestionsDocToList(Map<String, dynamic>? data) {
  if (data == null) return const <QuestionModel>[];
  final raw = data['questions'];
  if (raw == null) return const <QuestionModel>[];

  final Map<String, dynamic> qmap = Map<String, dynamic>.from(raw);

  // Keep a stable order by sorting on keys q_001 ... q_021
  final keys = qmap.keys.toList()..sort();

  return keys.map((k) {
    final item = Map<String, dynamic>.from(qmap[k]);

    final String id = k;
    final String question = item['question'];
    final QuestionTypesEnum type = QuestionTypesEnum.values.byName(
      item['type'],
    );
    final choices = item['choices'] as List;
    final convertedChoices = choices
        .map(
          (e) => QuestionChoicesModel.initial().copyWith(
            id: choices.indexOf(e).toString(),
            choice: e['choice'],
          ),
        )
        .toList();

    return QuestionModel.initial().copyWith(
      id: id,
      question: question,
      type: type,
      choices: convertedChoices,
    );
  }).toList();
}

@freezed
abstract class PollChoice with _$PollChoice {
  const factory PollChoice({
    required String label,
    required int count,
    String? subLabel,
    @JsonKey(includeFromJson: false, includeToJson: false) Color? color,
  }) = _PollChoice;

  factory PollChoice.fromJson(Map<String, dynamic> json) =>
      _$PollChoiceFromJson(json);
}

@freezed
abstract class PollChoiceGroup with _$PollChoiceGroup {
  const factory PollChoiceGroup({
    required String question,
    required QuestionTypesEnum type,
    required List<PollChoice> choices,
  }) = _PollChoiceGroup;

  factory PollChoiceGroup.fromJson(Map<String, dynamic> json) =>
      _$PollChoiceGroupFromJson(json);
}

enum QuestionTypesEnum {
  multipleChoice,
  trueOrFalse,
  likertScale;

  bool get isMultipleChoice => this == multipleChoice;
  bool get isTrueOrFalse => this == trueOrFalse;
  bool get isLikertScale => this == likertScale;
}
