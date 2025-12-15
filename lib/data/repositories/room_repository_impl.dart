import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edutainstem/core/enums/difficulty_enum.dart';
import 'package:edutainstem/core/network/base_state.dart';
import 'package:edutainstem/data/sources/remote/room_data_source.dart';
import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:edutainstem/domain/models/help_requests/help_request_model.dart';
import 'package:edutainstem/domain/models/lessons/lesson_model.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:edutainstem/domain/repositories/room_repository.dart';
import 'package:flutter/foundation.dart';

class RoomRepositoryImpl implements RoomRepository {
  final RoomDataSource _dataSource;

  RoomRepositoryImpl(this._dataSource);

  int? _mapFirestoreCode(String code) {
    switch (code) {
      case 'permission-denied':
        return 403;
      case 'not-found':
        return 404;
      default:
        return null; // unknown
    }
  }

  @override
  Future<Either<FailedState, SuccessState<RoomModel?>>> createRoom({
    required RoomModel room,
  }) async {
    try {
      final result = await _dataSource.createRoom(room: room);
      return Right(SuccessState(result));
    } catch (e) {
      return Left(FailedState(message: e.toString()));
    }
  }

  @override
  Future<Either<FailedState, SuccessState<void>>> updateRoomStatus({
    required RoomModel room,
    bool reOpen = false,
    bool openLesson = false,
  }) async {
    try {
      final result = await _dataSource.updateRoomStatus(
        room: room,
        reOpen: reOpen,
        openLesson: openLesson,
      );
      return Right(SuccessState(result));
    } catch (e) {
      return Left(FailedState(message: e.toString()));
    }
  }

  @override
  Future<Either<FailedState, SuccessState<List<LessonModel>>>>
  getLessons() async {
    try {
      final result = await _dataSource.getLessons();
      return Right(SuccessState(result));
    } catch (e) {
      return Left(FailedState(message: e.toString()));
    }
  }

  @override
  Future<Either<FailedState, SuccessState<List<RoomModel>>>> getRooms() async {
    try {
      final result = await _dataSource.getRooms();
      return Right(SuccessState(result));
    } catch (e) {
      return Left(FailedState(message: e.toString()));
    }
  }

  @override
  Future<Either<FailedState, SuccessState<List<StudentEnrollment>>>>
  getEnrolledStudents({required String roomId}) async {
    try {
      final result = await _dataSource.getEnrolledStudents(roomId: roomId);
      return Right(SuccessState(result));
    } catch (e) {
      return Left(FailedState(message: e.toString()));
    }
  }

  @override
  Stream<Either<FailedState, SuccessState<List<PollChoiceGroup>>>>
  watchAssessmentStatistics({
    required String roomId,
    String questionDocId = 'trjNujthLLZTK1cN0j8r',
    bool uniquePerStudent = true,
  }) async* {
    final src = _dataSource.watchAssessmentStatistics(
      roomId: roomId,
      questionDocId: questionDocId,
      uniquePerStudent: uniquePerStudent,
    ); // Stream<RoomModel>
    try {
      await for (final students in src) {
        yield right(SuccessState<List<PollChoiceGroup>>(students));
      }
    } on FirebaseException catch (e) {
      yield left(
        FailedState(
          message: e.message ?? e.code,
          code: _mapFirestoreCode(e.code),
        ),
      );
    } catch (e) {
      yield left(FailedState(message: e.toString()));
    }
  }

  @override
  Stream<Either<FailedState, SuccessState<List<StudentEnrollment>>>>
  watchAssessmentStudents({required String roomId}) async* {
    final src = _dataSource.watchAssessmentStudents(
      roomId: roomId,
    ); // Stream<RoomModel>
    try {
      await for (final students in src) {
        yield right(SuccessState<List<StudentEnrollment>>(students));
      }
    } on FirebaseException catch (e) {
      yield left(
        FailedState(
          message: e.message ?? e.code,
          code: _mapFirestoreCode(e.code),
        ),
      );
    } catch (e) {
      yield left(FailedState(message: e.toString()));
    }
  }

  @override
  Future<Either<FailedState, SuccessState<void>>> applyDifficultyChanges({
    required String roomId,
    required List<StudentEnrollment> enrollments,
  }) async {
    try {
      final result = await _dataSource.applyDifficultyChanges(
        roomId: roomId,
        enrollments: enrollments,
      );
      return Right(SuccessState(result));
    } catch (e) {
      return Left(FailedState(message: e.toString()));
    }
  }

  @override
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
  }) async* {
    final src = _dataSource.watchQuizStatistics(
      room: room,
      questionDocId: questionDocId,
      uniquePerStudent: uniquePerStudent,
    ); // Stream<RoomModel>
    try {
      await for (final exam in src) {
        yield right(
          SuccessState<Map<DifficultyEnum, List<PollChoiceGroup>>>(exam),
        );
      }
    } on FirebaseException catch (e) {
      yield left(
        FailedState(
          message: e.message ?? e.code,
          code: _mapFirestoreCode(e.code),
        ),
      );
    } catch (e) {
      yield left(FailedState(message: e.toString()));
    }
  }

  @override
  Stream<Either<FailedState, SuccessState<List<HelpRequestModel>>>>
  streamPendingRequests(String roomId) async* {
    final src = _dataSource.streamPendingRequests(roomId); // Stream<RoomModel>
    try {
      await for (final requests in src) {
        yield right(SuccessState<List<HelpRequestModel>>(requests));
      }
    } on FirebaseException catch (e) {
      debugPrint('E: $e');
      yield left(
        FailedState(
          message: e.message ?? e.code,
          code: _mapFirestoreCode(e.code),
        ),
      );
    } catch (e) {
      debugPrint('E: $e');
      yield left(FailedState(message: e.toString()));
    }
  }

  @override
  Future<Either<FailedState, SuccessState<void>>> updateRequestStatus({
    required String roomId,
    required String requestId,
    required HelpQueueStatus status,
  }) async {
    try {
      final result = await _dataSource.updateRequestStatus(
        roomId: roomId,
        requestId: requestId,
        status: status,
      );
      return Right(SuccessState(result));
    } catch (e) {
      return Left(FailedState(message: e.toString()));
    }
  }

  @override
  Stream<Either<FailedState, SuccessState<List<String>>>> streamJournalFeedback(
    String roomId,
  ) async* {
    final src = _dataSource.streamJournalFeedback(roomId); // Stream<RoomModel>
    try {
      await for (final requests in src) {
        yield right(SuccessState<List<String>>(requests));
      }
    } on FirebaseException catch (e) {
      debugPrint('E: $e');
      yield left(
        FailedState(
          message: e.message ?? e.code,
          code: _mapFirestoreCode(e.code),
        ),
      );
    } catch (e) {
      debugPrint('E: $e');
      yield left(FailedState(message: e.toString()));
    }
  }
}
