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
