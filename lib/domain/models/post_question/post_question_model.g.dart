// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostQuestionModel _$PostQuestionModelFromJson(Map<String, dynamic> json) =>
    _PostQuestionModel(
      id: json['id'] as String? ?? '',
      index: (json['index'] as num?)?.toInt() ?? 0,
      question: json['question'] as String? ?? '',
      type:
          $enumDecodeNullable(
            _$QuestionTypesEnumEnumMap,
            json['type'],
            unknownValue: QuestionTypesEnum.multipleChoice,
          ) ??
          QuestionTypesEnum.multipleChoice,
      isFlagged: json['isFlagged'] as bool? ?? false,
      choices:
          (json['choices'] as List<dynamic>?)
              ?.map(
                (e) => PostQuestionChoicesModel.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const <PostQuestionChoicesModel>[],
      answer: json['answer'] == null
          ? null
          : PostQuestionChoicesModel.fromJson(
              json['answer'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$PostQuestionModelToJson(_PostQuestionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'question': instance.question,
      'type': _$QuestionTypesEnumEnumMap[instance.type]!,
      'isFlagged': instance.isFlagged,
      'choices': instance.choices.map((e) => e.toJson()).toList(),
      if (instance.answer?.toJson() case final value?) 'answer': value,
    };

const _$QuestionTypesEnumEnumMap = {
  QuestionTypesEnum.multipleChoice: 'multipleChoice',
  QuestionTypesEnum.trueOrFalse: 'trueOrFalse',
  QuestionTypesEnum.likertScale: 'likertScale',
};

_PostQuestionChoicesModel _$PostQuestionChoicesModelFromJson(
  Map<String, dynamic> json,
) => _PostQuestionChoicesModel(
  id: json['id'] as String? ?? '',
  choice: json['choice'] as String? ?? '',
  isCorrectChoice: json['isCorrectChoice'] as bool? ?? false,
);

Map<String, dynamic> _$PostQuestionChoicesModelToJson(
  _PostQuestionChoicesModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'choice': instance.choice,
  'isCorrectChoice': instance.isCorrectChoice,
};

_ExamStatModel _$ExamStatModelFromJson(Map<String, dynamic> json) =>
    _ExamStatModel(
      question: PostQuestionModel.fromJson(
        json['question'] as Map<String, dynamic>,
      ),
      difficulty: $enumDecode(_$DifficultyEnumEnumMap, json['difficulty']),
    );

Map<String, dynamic> _$ExamStatModelToJson(_ExamStatModel instance) =>
    <String, dynamic>{
      'question': instance.question,
      'difficulty': _$DifficultyEnumEnumMap[instance.difficulty]!,
    };

const _$DifficultyEnumEnumMap = {
  DifficultyEnum.basic: 'basic',
  DifficultyEnum.intermediate: 'intermediate',
  DifficultyEnum.advance: 'advance',
};
