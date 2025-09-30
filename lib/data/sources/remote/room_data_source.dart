import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:edutainstem/domain/models/lessons/lesson_model.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';

abstract class RoomDataSource {
  Future<RoomModel?> createRoom({required RoomModel room});
  Future<void> updateRoomStatus({required RoomModel room, bool reOpen = false});
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
}
