import 'package:edutainstem/core/enums/difficulty_enum.dart';
import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/v4.dart';

part 'post_question_model.freezed.dart';
part 'post_question_model.g.dart'; // only if you're using json_serializable

@freezed
abstract class PostQuestionModel with _$PostQuestionModel {
  @JsonSerializable(explicitToJson: true)
  const factory PostQuestionModel({
    @Default('') String id, // ← not required anymore
    @Default(0) int index,
    @Default('') String question,
    @JsonKey(unknownEnumValue: QuestionTypesEnum.multipleChoice)
    @Default(QuestionTypesEnum.multipleChoice)
    QuestionTypesEnum type,
    @Default(false) bool isFlagged,
    @Default(<PostQuestionChoicesModel>[])
    List<PostQuestionChoicesModel> choices,
    @JsonKey(includeIfNull: false) PostQuestionChoicesModel? answer,
  }) = _PostQuestionModel;

  factory PostQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$PostQuestionModelFromJson(json);

  factory PostQuestionModel.initial() {
    return PostQuestionModel(
      id: const UuidV4().generate(),
      index: 0,
      question: '',
      type: QuestionTypesEnum.multipleChoice,
      choices: [],
    );
  }
}

@freezed
abstract class PostQuestionChoicesModel with _$PostQuestionChoicesModel {
  const factory PostQuestionChoicesModel({
    @Default('') String id,
    @Default('') String choice,
    @Default(false) bool isCorrectChoice,
  }) = _PostQuestionChoicesModel;

  factory PostQuestionChoicesModel.fromJson(Map<String, dynamic> json) =>
      _$PostQuestionChoicesModelFromJson(json);

  factory PostQuestionChoicesModel.initial() {
    return PostQuestionChoicesModel(id: const UuidV4().generate(), choice: '');
  }
}

@freezed
abstract class ExamStatModel with _$ExamStatModel {
  const factory ExamStatModel({
    required PostQuestionModel question,
    required DifficultyEnum difficulty,
  }) = _ExamStatModel;

  factory ExamStatModel.fromJson(Map<String, dynamic> json) =>
      _$ExamStatModelFromJson(json);
}

extension ExamStatModelListHelper on List<ExamStatModel> {
  /// Groups ExamStatModels by difficulty and converts each question
  /// into a PollChoiceGroup. For multiple-choice:
  /// - PollChoice.subLabel = PostQuestionChoicesModel.choice
  /// - isAnswer true if the choice is correct (via flag or answer id match)
  /// - count uses a simple per-question tally: 1 for the correct choice, 0 otherwise
  Map<DifficultyEnum, List<PollChoiceGroup>> toPollGroupsByDifficulty() {
    final Map<DifficultyEnum, List<PollChoiceGroup>> grouped = {};

    for (final stat in this) {
      final q = stat.question;

      final choices = q.choices.map((c) {
        final matchesAnswerId = q.answer?.id == c.id;
        final isAnswer = c.isCorrectChoice;

        return PollChoice(
          label: c.choice, // main label
          subLabel: q.type.isMultipleChoice
              ? c.choice
              : null, // <-- as requested
          isAnswer: isAnswer,
          count: matchesAnswerId ? 1 : 0, // simple tally placeholder
        );
      }).toList();

      final group = PollChoiceGroup(
        question: q.question,
        type: q.type, // PollChoiceGroup.type == question.type
        choices: choices, // choices mirror PostQuestionModel.choices
      );

      grouped.putIfAbsent(stat.difficulty, () => []).add(group);
    }

    return grouped;
  }
}

List<PostQuestionModel> mapPostQuestionsDocToList(Map<String, dynamic>? data) {
  if (data == null) return const <PostQuestionModel>[];
  final raw = data['questions'];
  if (raw == null) return const <PostQuestionModel>[];

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
          (e) => PostQuestionChoicesModel.initial().copyWith(
            id: choices.indexOf(e).toString(),
            choice: e['choice'],
          ),
        )
        .toList();

    return PostQuestionModel.initial().copyWith(
      id: id,
      question: question,
      type: type,
      choices: convertedChoices,
    );
  }).toList();
}

extension QuestionListX on List<PostQuestionModel> {
  /// Returns percentage (0.0–100.0) of questions that are answered.
  double get answeredPercentage {
    if (isEmpty) return 0.0;

    final answered = where((q) => q.answer != null).length;
    return (answered / length);
  }

  /// Returns how many questions are answered.
  int get answeredCount => where((q) => q.answer != null).length;

  /// Returns how many are still unanswered.
  int get unansweredCount => where((q) => q.answer == null).length;

  List<Map<String, dynamic>> toAnswerMapList() {
    return map((q) {
      return {
        'question': q.question,
        'answer': q.answer?.choice, // null-safe
      };
    }).toList();
  }
}
