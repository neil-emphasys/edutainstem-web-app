// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoomModel _$RoomModelFromJson(Map<String, dynamic> json) => _RoomModel(
  id: json['id'] as String?,
  isAssessmentOpen: json['isAssessmentOpen'] as bool,
  isOpen: json['isOpen'] as bool,
  isLessonOpen: json['isLessonOpen'] as bool,
  roomCode: json['roomCode'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  createdById: json['createdById'] as String,
  createdByName: json['createdByName'] as String,
  duration: (json['duration'] as num).toInt(),
  preferredLessons: (json['preferredLessons'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  studentsEnrolled: json['studentsEnrolled'] == null
      ? const <String, StudentEnrollmentModel>{}
      : const StudentsEnrolledConverter().fromJson(json['studentsEnrolled']),
);

Map<String, dynamic> _$RoomModelToJson(_RoomModel instance) =>
    <String, dynamic>{
      'isAssessmentOpen': instance.isAssessmentOpen,
      'isOpen': instance.isOpen,
      'isLessonOpen': instance.isLessonOpen,
      'roomCode': instance.roomCode,
      'title': instance.title,
      'description': instance.description,
      'createdById': instance.createdById,
      'createdByName': instance.createdByName,
      'duration': instance.duration,
      'preferredLessons': instance.preferredLessons,
      'studentsEnrolled': const StudentsEnrolledConverter().toJson(
        instance.studentsEnrolled,
      ),
    };

_StudentEnrollmentModel _$StudentEnrollmentModelFromJson(
  Map<String, dynamic> json,
) => _StudentEnrollmentModel(
  difficulty:
      $enumDecodeNullable(
        _$DifficultyEnumEnumMap,
        json['difficulty'],
        unknownValue: DifficultyEnum.basic,
      ) ??
      DifficultyEnum.basic,
  name: json['name'] as String? ?? '',
  examination:
      (json['examination'] as List<dynamic>?)
          ?.map((e) => ExamEntryModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ExamEntryModel>[],
  assessment:
      (json['assessment'] as List<dynamic>?)
          ?.map((e) => AssessmentEntryModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AssessmentEntryModel>[],
);

Map<String, dynamic> _$StudentEnrollmentModelToJson(
  _StudentEnrollmentModel instance,
) => <String, dynamic>{
  'difficulty': _$DifficultyEnumEnumMap[instance.difficulty]!,
  'name': instance.name,
  'examination': instance.examination.map((e) => e.toJson()).toList(),
  'assessment': instance.assessment.map((e) => e.toJson()).toList(),
};

const _$DifficultyEnumEnumMap = {
  DifficultyEnum.basic: 'basic',
  DifficultyEnum.intermediate: 'intermediate',
  DifficultyEnum.advance: 'advance',
};

_ExamEntryModel _$ExamEntryModelFromJson(Map<String, dynamic> json) =>
    _ExamEntryModel(
      qid: json['qid'] as String? ?? '',
      lid: json['lid'] as String? ?? '',
      answer: AnswerModel.fromJson(json['answer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExamEntryModelToJson(_ExamEntryModel instance) =>
    <String, dynamic>{
      'qid': instance.qid,
      'lid': instance.lid,
      'answer': instance.answer.toJson(),
    };

_AnswerModel _$AnswerModelFromJson(Map<String, dynamic> json) => _AnswerModel(
  id: json['id'] as String? ?? '',
  choice: json['choice'] as String? ?? '',
  isCorrectChoice: json['isCorrectChoice'] as bool? ?? false,
);

Map<String, dynamic> _$AnswerModelToJson(_AnswerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'choice': instance.choice,
      'isCorrectChoice': instance.isCorrectChoice,
    };

_AssessmentEntryModel _$AssessmentEntryModelFromJson(
  Map<String, dynamic> json,
) => _AssessmentEntryModel(
  qid: json['qid'] as String? ?? '',
  answerIndex: json['answerIndex'] as String? ?? '',
);

Map<String, dynamic> _$AssessmentEntryModelToJson(
  _AssessmentEntryModel instance,
) => <String, dynamic>{
  'qid': instance.qid,
  'answerIndex': instance.answerIndex,
};

_AssessmentAnswer _$AssessmentAnswerFromJson(Map<String, dynamic> json) =>
    _AssessmentAnswer(
      qid: json['qid'] as String,
      answerIndex: json['answerIndex'] as String,
    );

Map<String, dynamic> _$AssessmentAnswerToJson(_AssessmentAnswer instance) =>
    <String, dynamic>{'qid': instance.qid, 'answerIndex': instance.answerIndex};

_StudentEnrollment _$StudentEnrollmentFromJson(Map<String, dynamic> json) =>
    _StudentEnrollment(
      uid: json['uid'] as String,
      name: json['name'] as String? ?? '',
      difficulty: json['difficulty'] as String?,
      assessment:
          (json['assessment'] as List<dynamic>?)
              ?.map((e) => AssessmentAnswer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AssessmentAnswer>[],
    );

Map<String, dynamic> _$StudentEnrollmentToJson(_StudentEnrollment instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'difficulty': instance.difficulty,
      'assessment': instance.assessment,
    };
