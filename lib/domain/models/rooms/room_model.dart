import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/v4.dart';

part 'room_model.freezed.dart';
part 'room_model.g.dart'; // only if you're using json_serializable

@freezed
abstract class RoomModel with _$RoomModel {
  const factory RoomModel({
    @JsonKey(includeFromJson: true, includeToJson: false) String? id,
    required bool isAssessmentOpen,
    required bool isOpen,
    @JsonKey(includeIfNull: false) required bool isLessonOpen,
    required String roomCode,
    required String title,
    required String description,
    required String createdById,
    required String createdByName,
    required int duration,
    required List<String> preferredLessons,
    // Add tag properties here
  }) = _RoomModel;

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);

  factory RoomModel.fromDoc(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data();
    if (data == null) {
      throw StateError('Missing data for document: ${doc.id}');
    }
    return RoomModel.fromJson({...data, 'id': doc.id});
  }

  factory RoomModel.initial() {
    return RoomModel(
      id: const UuidV4().generate(),
      title: '',
      description: '',
      isAssessmentOpen: false,
      isOpen: true,
      isLessonOpen: false,
      roomCode: '',
      duration: 0,
      preferredLessons: [],
      createdById: '',
      createdByName: '',
    );
  }
}

/* @freezed
abstract class RoomStudentsEnrolledModel with _$RoomStudentsEnrolledModel {
  const factory RoomStudentsEnrolledModel({
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
    required String userID,
    required String name,

  }) = _RoomStudentsEnrolledModel;

  factory RoomStudentsEnrolledModel.fromJson(Map<String, dynamic> json) =>
      _$RoomStudentsEnrolledModelFromJson(json);

  factory RoomStudentsEnrolledModel.fromDoc(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    final data = doc.data();
    if (data == null) {
      throw StateError('Missing data for document: ${doc.id}');
    }
    return RoomStudentsEnrolledModel.fromJson({...data, 'Document ID': doc.id});
  }

  /* factory RoomModel.initial() {
    return RoomModel(
      id: const UuidV4().generate(),
      title: '',
      description: '',
      isAssessmentOpen: false,
      isOpen: true,
      roomCode: '',
      duration: 0,
      preferredLessons: [],
    );
  } */
} */

@freezed
abstract class AssessmentAnswer with _$AssessmentAnswer {
  const factory AssessmentAnswer({
    required String qid,
    @JsonKey(name: 'answerIndex') required String answerIndex,
  }) = _AssessmentAnswer;

  factory AssessmentAnswer.fromJson(Map<String, dynamic> json) =>
      _$AssessmentAnswerFromJson(json);
}

@freezed
abstract class StudentEnrollment with _$StudentEnrollment {
  const factory StudentEnrollment({
    required String uid,
    @Default('') String name,
    @JsonKey(includeIfNull: true) String? difficulty,
    @JsonKey(includeFromJson: false, includeToJson: false)
    String? changedDifficulty,
    @Default(<AssessmentAnswer>[]) List<AssessmentAnswer> assessment,
  }) = _StudentEnrollment;

  factory StudentEnrollment.fromJson(Map<String, dynamic> json) =>
      _$StudentEnrollmentFromJson(json);

  /// Build from a single array entry shaped like:
  /// { "<uid>": { "name": "...", "assessment": [ {qid, answerIndex}, ... ] } }
  /// Also tolerates legacy variants:
  /// - "asessment" (misspelling)
  /// - { "<uid>": [ {qid, answerIndex}, ... ] } (name lost)
  factory StudentEnrollment.fromArrayEntry(Map<String, dynamic> entry) {
    if (entry.length != 1) {
      throw ArgumentError('Invalid studentsEnrolled entry: $entry');
    }
    final uid = entry.keys.first;
    final value = entry[uid];

    // Normal (recommended) shape
    if (value is Map) {
      final inner = Map<String, dynamic>.from(value);
      final name = (inner['name'] ?? '') as String;
      final difficulty = (inner['difficulty'] ?? '') as String;

      final rawAssess =
          (inner['assessment'] ?? inner['asessment'] ?? const [])
              as List<dynamic>;
      final assessment = rawAssess
          .map(
            (e) =>
                AssessmentAnswer.fromJson(Map<String, dynamic>.from(e as Map)),
          )
          .toList();

      return StudentEnrollment(
        uid: uid,
        name: name,
        assessment: assessment,
        difficulty: difficulty,
      );
    }

    // Legacy shape: { uid: [ {qid, answerIndex}, ... ] }
    if (value is List) {
      final assessment = value
          .map(
            (e) =>
                AssessmentAnswer.fromJson(Map<String, dynamic>.from(e as Map)),
          )
          .toList();
      return StudentEnrollment(uid: uid, name: '', assessment: assessment);
    }

    // Unknown shape; return minimal
    return StudentEnrollment(uid: uid);
  }

  /* /// Convert back to the array-of-maps shape for Firestore writes.
  Map<String, dynamic> toArrayEntry({required String uid, required String name, }) => {
    uid: {
      'name': name,
      'assessment': assessment.map((a) => a.toJson()).toList(),
    },
  }; */
}

extension RoomModelHelper on RoomModel {
  /// Returns a new RoomModel where the room is closed (`isOpen = false`)
  /// and the assessment is opened (`isAssessmentOpen = true`).
  RoomModel closeRoomAndOpenAssessment() {
    return copyWith(isOpen: false, isAssessmentOpen: true);
  }
}

/// Count how many students selected `answerIndex` for `qid`.
int countAnswersFor(
  List<StudentEnrollment> students, {
  required String qid,
  required String answerIndex,
  bool uniquePerStudent =
      true, // if true, use the student's last answer for that qid
}) {
  var count = 0;
  for (final s in students) {
    if (uniquePerStudent) {
      final matches = s.assessment.where((a) => a.qid == qid);
      if (matches.isEmpty) continue;
      final last = matches.last;
      if (last.answerIndex == answerIndex) count++;
    } else {
      count += s.assessment
          .where((a) => a.qid == qid && a.answerIndex == answerIndex)
          .length;
    }
  }
  return count;
}

/// Histogram for a specific qid: {answerIndex: count}
Map<String, int> tallyForQid(
  List<StudentEnrollment> students,
  String qid, {
  bool uniquePerStudent = true,
}) {
  final tallies = <String, int>{};
  for (final s in students) {
    if (uniquePerStudent) {
      final matches = s.assessment.where((a) => a.qid == qid);
      if (matches.isEmpty) continue;
      final last = matches.last;
      tallies.update(last.answerIndex, (v) => v + 1, ifAbsent: () => 1);
    } else {
      for (final a in s.assessment.where((a) => a.qid == qid)) {
        tallies.update(a.answerIndex, (v) => v + 1, ifAbsent: () => 1);
      }
    }
  }
  return tallies;
}

/// Percentage helper (0..100) for (qid, answerIndex).
double percentFor(
  List<StudentEnrollment> students, {
  required String qid,
  required String answerIndex,
  bool uniquePerStudent = true,
}) {
  final respondents = uniquePerStudent
      ? students.where((s) => s.assessment.any((a) => a.qid == qid)).length
      : students.fold<int>(
          0,
          (acc, s) => acc + s.assessment.where((a) => a.qid == qid).length,
        );
  if (respondents == 0) return 0.0;
  final hits = countAnswersFor(
    students,
    qid: qid,
    answerIndex: answerIndex,
    uniquePerStudent: uniquePerStudent,
  );
  return hits * 100.0 / respondents;
}
