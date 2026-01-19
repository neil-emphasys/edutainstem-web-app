import 'package:dartz/dartz.dart';
import 'package:edutainstem/core/enums/difficulty_enum.dart';
import 'package:edutainstem/core/network/base_state.dart';
import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:edutainstem/domain/models/help_requests/help_request_model.dart';
import 'package:edutainstem/domain/models/lessons/lesson_model.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';

abstract class RoomRepository {
  Future<Either<FailedState, SuccessState<RoomModel?>>> createRoom({
    required RoomModel room,
  });
  Future<Either<FailedState, SuccessState<void>>> updateRoomStatus({
    required RoomModel room,
    bool reOpen = false,
    bool openLesson = false,
  });
  Future<Either<FailedState, SuccessState<List<LessonModel>>>> getLessons();
  Future<Either<FailedState, SuccessState<List<RoomModel>>>> getRooms();
  Stream<Either<FailedState, SuccessState<RoomModel>>> watchRoom({
    required String roomId,
  });
  Future<Either<FailedState, SuccessState<List<StudentEnrollment>>>>
  getEnrolledStudents({required String roomId});
  Stream<Either<FailedState, SuccessState<List<PollChoiceGroup>>>>
  watchAssessmentStatistics({
    required String roomId,
    String questionDocId = 'trjNujthLLZTK1cN0j8r',
    bool uniquePerStudent = true,
  });
  Stream<Either<FailedState, SuccessState<List<StudentEnrollment>>>>
  watchAssessmentStudents({required String roomId});
  Future<Either<FailedState, SuccessState<void>>> applyDifficultyChanges({
    required String roomId,
    required List<StudentEnrollment> enrollments,
  });
  Stream<
    Either<
      FailedState,
      SuccessState<Map<DifficultyEnum, List<PollChoiceGroup>>>
    >
  >
  watchQuizStatistics({
    required RoomModel room,
    String questionDocId = 'trjNujthLLZTK1cN0j8r',
    bool uniquePerStudent = true,
  });
  Stream<Either<FailedState, SuccessState<List<HelpRequestModel>>>>
  streamPendingRequests(String roomId);
  Future<Either<FailedState, SuccessState<void>>> updateRequestStatus({
    required String roomId,
    required String requestId,
    required HelpQueueStatus status,
  });
  Stream<Either<FailedState, SuccessState<List<String>>>> streamJournalFeedback(
    String roomId,
  );
}
