// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) =>
    _QuestionModel(
      id: json['id'] as String,
      question: json['question'] as String,
      type: $enumDecode(_$QuestionTypesEnumEnumMap, json['type']),
      isFlagged: json['isFlagged'] as bool? ?? false,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => QuestionChoicesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      answer: json['answer'] == null
          ? null
          : QuestionChoicesModel.fromJson(
              json['answer'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$QuestionModelToJson(_QuestionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'type': _$QuestionTypesEnumEnumMap[instance.type]!,
      'isFlagged': instance.isFlagged,
      'choices': instance.choices,
      'answer': instance.answer,
    };

const _$QuestionTypesEnumEnumMap = {
  QuestionTypesEnum.multipleChoice: 'multipleChoice',
  QuestionTypesEnum.trueOrFalse: 'trueOrFalse',
  QuestionTypesEnum.likertScale: 'likertScale',
};

_QuestionChoicesModel _$QuestionChoicesModelFromJson(
  Map<String, dynamic> json,
) => _QuestionChoicesModel(
  id: json['id'] as String,
  choice: json['choice'] as String,
);

Map<String, dynamic> _$QuestionChoicesModelToJson(
  _QuestionChoicesModel instance,
) => <String, dynamic>{'id': instance.id, 'choice': instance.choice};

_PollChoice _$PollChoiceFromJson(Map<String, dynamic> json) => _PollChoice(
  label: json['label'] as String,
  count: (json['count'] as num).toInt(),
  subLabel: json['subLabel'] as String?,
);

Map<String, dynamic> _$PollChoiceToJson(_PollChoice instance) =>
    <String, dynamic>{
      'label': instance.label,
      'count': instance.count,
      'subLabel': instance.subLabel,
    };

_PollChoiceGroup _$PollChoiceGroupFromJson(Map<String, dynamic> json) =>
    _PollChoiceGroup(
      question: json['question'] as String,
      type: $enumDecode(_$QuestionTypesEnumEnumMap, json['type']),
      choices: (json['choices'] as List<dynamic>)
          .map((e) => PollChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PollChoiceGroupToJson(_PollChoiceGroup instance) =>
    <String, dynamic>{
      'question': instance.question,
      'type': _$QuestionTypesEnumEnumMap[instance.type]!,
      'choices': instance.choices,
    };
