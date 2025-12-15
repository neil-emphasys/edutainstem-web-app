import 'package:edutainstem/core/enums/difficulty_enum.dart';
import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:edutainstem/domain/models/help_requests/help_request_model.dart';
import 'package:edutainstem/domain/models/lessons/lesson_model.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';

abstract class RoomDataSource {
  Future<RoomModel?> createRoom({required RoomModel room});
  Future<void> updateRoomStatus({
    required RoomModel room,
    bool reOpen = false,
    bool openLesson = false,
  });
  Future<List<LessonModel>> getLessons();
  Future<List<RoomModel>> getRooms();
  Future<List<StudentEnrollment>> getEnrolledStudents({required String roomId});
  Stream<List<PollChoiceGroup>> watchAssessmentStatistics({
    required String roomId,
    String questionDocId = 'trjNujthLLZTK1cN0j8r',
    bool uniquePerStudent = true,
  });
  Stream<List<StudentEnrollment>> watchAssessmentStudents({
    required String roomId,
  });
  Future<void> applyDifficultyChanges({
    required String roomId,
    required List<StudentEnrollment> enrollments,
  });
  Stream<Map<DifficultyEnum, List<PollChoiceGroup>>> watchQuizStatistics({
    required RoomModel room,
    String questionDocId = 'trjNujthLLZTK1cN0j8r',
    bool uniquePerStudent = true,
  });
  Stream<List<HelpRequestModel>> streamPendingRequests(String roomId);
  Future<void> updateRequestStatus({
    required String roomId,
    required String requestId,
    required HelpQueueStatus status,
  });
  Stream<List<String>> streamJournalFeedback(String roomId);
}
