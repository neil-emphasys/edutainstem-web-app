import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edutainstem/core/constants/firebase_constants.dart';
import 'package:edutainstem/core/enums/difficulty_enum.dart';
import 'package:edutainstem/data/sources/remote/room_data_source.dart';
import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:edutainstem/domain/models/help_requests/help_request_model.dart';
import 'package:edutainstem/domain/models/lessons/lesson_model.dart';
import 'package:edutainstem/domain/models/post_question/post_question_model.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RoomDataSourceImpl implements RoomDataSource {
  final _db = FirebaseFirestore.instance;

  @override
  Future<RoomModel?> createRoom({required RoomModel room}) async {
    try {
      final user = FirebaseAuth.instance.currentUser;

      if (user == null) return null;

      final docRef = await _db.runTransaction((tx) async {
        // 1) Fetch all open room codes
        final openRoomsSnap = await _db
            .collection(FirebaseConstants.room.name)
            .where('isOpen', isEqualTo: true)
            .get();

        final existingCodes = openRoomsSnap.docs
            .map(
              (doc) =>
                  (doc.data()[FirebaseConstants.room.roomCode] as String?)
                      ?.toUpperCase() ??
                  '',
            )
            .where((c) => c.isNotEmpty)
            .toSet();

        // 2) Generate a unique code
        final newCode = genCodeExcluding(len: 6, excludedCodes: existingCodes);

        // 3) Create new RoomModel with code injected
        final newRoom = room.copyWith(
          roomCode: newCode,
          createdById: user.uid,
          createdByName: user.displayName ?? '',
          isOpen: true, // ensure open on creation
        );

        // 4) Add to Firestore
        final docRef = _db
            .collection(FirebaseConstants.room.name)
            .doc(); // auto-ID

        final payload = {...newRoom.toJson(), 'studentsEnrolled': []};

        await docRef.set(payload);

        // await docRef.set(newRoom.toJson());

        return newRoom.copyWith(id: docRef.id);
      });

      return docRef;
    } on FirebaseException catch (e, stackTrace) {
      // debugPrintStack(stackTrace: stackTrace);
      rethrow; // rethrow so caller can handle it if needed
    } catch (e, stackTrace) {
      // debugPrintStack(stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<void> updateRoomStatus({
    required RoomModel room,
    bool reOpen = false,
    bool openLesson = false,
  }) async {
    final roomId = room.id ?? '';

    try {
      await _db.collection(FirebaseConstants.room.name).doc(roomId).update({
        'isOpen': openLesson
            ? false
            : reOpen
            ? true
            : false,
        'isAssessmentOpen': openLesson
            ? false
            : reOpen
            ? false
            : true,
        'isLessonOpen': openLesson ? true : false,
      });

      /*  await _db.collection(FirebaseConstants.room.name).doc(roomId).update({
        'isOpen':
            !openLesson &&
            reOpen, // true only when re-opening and not in lesson
        'isAssessmentOpen':
            !openLesson && !reOpen, // true only when neither lesson nor reopen
        'isLessonOpen': openLesson, // mirrors openLesson
      }); */
    } on FirebaseException catch (e, st) {
      // debugPrintStack(stackTrace: st);
      rethrow;
    } catch (e, st) {
      // debugPrintStack(stackTrace: st);
      rethrow;
    }
  }

  @override
  Future<List<LessonModel>> getLessons() async {
    try {
      final snap = await _db
          .collection(FirebaseConstants.ele.name)
          // .where('isOpen', isEqualTo: true) // <- optional filter
          // .orderBy('title') // optional ordering
          .get();

      // Map each doc to RoomModel using your fromDoc factory.
      final rooms = snap.docs
          .map<LessonModel>((doc) => LessonModel.fromDoc(doc))
          .toList();

      return rooms;
    } on FirebaseException catch (e, st) {
      debugPrintStack(stackTrace: st);
      rethrow;
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      rethrow;
    }
  }

  @override
  Future<List<RoomModel>> getRooms() async {
    try {
      final user = FirebaseAuth.instance.currentUser;

      if (user == null) throw Exception('User not signed in');

      final snap = await _db
          .collection(FirebaseConstants.room.name)
          .where(
            FirebaseConstants.room.createdById,
            isEqualTo: user.uid,
          ) // <- optional filter
          // .orderBy('title') // optional ordering
          .get();

      //! TEST: PLEASE REMOVE ON PROD
      // if (snap.docs.firstOrNull != null) {
      //   it<JsonDownloadService>().saveJson(
      //     input: snap.docs.firstOrNull!.data(),
      //   );
      // }

      // Map each doc to RoomModel using your fromDoc factory.
      final rooms = snap.docs
          .map<RoomModel>((doc) => RoomModel.fromDoc(doc))
          .toList();

      return rooms;
    } on FirebaseException catch (e, st) {
      // debugPrintStack(stackTrace: st);
      rethrow;
    } catch (e, st) {
      // debugPrintStack(stackTrace: st);
      rethrow;
    }
  }

  @override
  Future<List<StudentEnrollment>> getEnrolledStudents({
    required String roomId,
  }) async {
    try {
      final roomData = await _db
          .collection(FirebaseConstants.room.name)
          // .where('isOpen', isEqualTo: true) // <- optional filter
          // .orderBy('title') // optional ordering
          .doc(roomId)
          .get();

      final raw = roomData[FirebaseConstants.room.studentsEnrolled] ?? const [];
      final list = List<dynamic>.from(raw as List);

      final test = list
          .map(
            (e) => StudentEnrollment.fromArrayEntry(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList();

      return list
          .map(
            (e) => StudentEnrollment.fromArrayEntry(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList();
    } on FirebaseException catch (e, st) {
      debugPrintStack(stackTrace: st);
      rethrow;
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      rethrow;
    }
  }

  /* Future<List<PollChoiceGroup>> getAssessmentStatistics({
    required String roomId,
  }) async {
    try {
      final user =
          FirebaseAuth.instance.currentUser ??
          (await FirebaseAuth.instance.signInAnonymously()).user;

      final qs = await _db
          .collection(FirebaseConstants.questions.name)
          .doc('trjNujthLLZTK1cN0j8r')
          .get();

      // logger.d(qs.data);
      final List<QuestionModel> questions = mapQuestionsDocToList(qs.data());

      final roomData = await _db
          .collection(FirebaseConstants.room.name)
          // .where('isOpen', isEqualTo: true) // <- optional filter
          // .orderBy('title') // optional ordering
          .doc(roomId)
          .get();

      final raw = roomData[FirebaseConstants.room.studentsEnrolled] ?? const [];
      final list = List<dynamic>.from(raw as List);

      final List<StudentEnrollment> answers = list
          .map(
            (e) => StudentEnrollment.fromArrayEntry(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList();

      final poll = questions.map((e) {
        return PollChoiceGroup(
          question: e.question,
          type: e.type,
          choices: e.choices.map((i) {
            return PollChoice(
              label: i.choice,
              count: countAnswersFor(
                answers,
                qid: e.id,
                answerIndex: e.choices.indexOf(i).toString(),
              ),
            );
          }).toList(),
        );
      }).toList();
      return poll;
    } on FirebaseException catch (e, st) {
      debugPrintStack(stackTrace: st);
      rethrow;
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      rethrow;
    }
  } */

  @override
  Stream<List<PollChoiceGroup>> watchAssessmentStatistics({
    required String roomId,
    String questionDocId = 'trjNujthLLZTK1cN0j8r',
    bool uniquePerStudent = true,
  }) async* {
    final questionsRef = _db
        .collection(FirebaseConstants.questions.name)
        .doc(questionDocId);
    final roomRef = _db.collection(FirebaseConstants.room.name).doc(roomId);

    final questionsSnap = await questionsRef.get();
    if (!questionsSnap.exists) {
      throw StateError('Questions document not found: $questionDocId');
    }
    final questions = mapQuestionsDocToList(
      questionsSnap.data() as Map<String, dynamic>,
    );

    yield* roomRef.snapshots().map((roomSnap) {
      if (!roomSnap.exists) {
        throw StateError('Room not found: $roomId');
      }
      final roomData = roomSnap.data() as Map<String, dynamic>;
      final raw = roomData[FirebaseConstants.room.studentsEnrolled] ?? const [];
      final list = List<dynamic>.from(raw as List);
      final students = list
          .map(
            (e) => StudentEnrollment.fromArrayEntry(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList();

      final poll = <PollChoiceGroup>[];
      for (final q in questions) {
        final hist = tallyForQid(
          students,
          q.id,
          uniquePerStudent: uniquePerStudent,
        );
        final choices = q.choices
            .asMap()
            .entries
            .map(
              (e) => PollChoice(
                label: e.value.choice,
                subLabel: (q.type.isMultipleChoice) ? e.value.choice : null,
                count: hist['${e.key}'] ?? 0,
              ),
            )
            .toList();

        poll.add(
          PollChoiceGroup(question: q.question, type: q.type, choices: choices),
        );
      }
      return poll;
    });
  }

  @override
  Stream<List<StudentEnrollment>> watchAssessmentStudents({
    required String roomId,
  }) async* {
    try {
      final roomRef = _db.collection(FirebaseConstants.room.name).doc(roomId);

      yield* roomRef.snapshots().map((roomSnap) {
        try {
          if (!roomSnap.exists) {
            throw StateError('Room not found: $roomId');
          }
          final roomData = roomSnap.data() as Map<String, dynamic>;
          final raw =
              roomData[FirebaseConstants.room.studentsEnrolled] ?? const [];
          final list = List<dynamic>.from(raw as List);
          final students = list
              .map(
                (e) => StudentEnrollment.fromArrayEntry(
                  Map<String, dynamic>.from(e as Map),
                ),
              )
              .toList();

          return students;
        } catch (e, stackTrace) {
          debugPrintStack(stackTrace: stackTrace);
          return [];
        }
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> applyDifficultyChanges({
    required String roomId,
    required List<StudentEnrollment> enrollments,
  }) async {
    try {
      // Build { uid: newDifficulty } from the list, skipping null/empty

      final updates = <String, String>{};
      for (final s in enrollments) {
        final cd = s.changedDifficulty?.trim();
        if (s.uid.isNotEmpty && cd != null && cd.isNotEmpty) {
          updates[s.uid] = cd;
        }
      }
      if (updates.isEmpty) {
        return;
      }

      final docRef = _db.collection(FirebaseConstants.room.name).doc(roomId);

      return _db.runTransaction<void>((tx) async {
        final snap = await tx.get(docRef);
        if (!snap.exists) {
          throw StateError('Room "$roomId" does not exist.');
        }

        final data = snap.data() ?? const {};
        final rawList = data[FirebaseConstants.room.studentsEnrolled];

        if (rawList is! List) {
          throw StateError('Field "studentsEnrolled" is not a List.');
        }

        // Deep copy to mutable structures
        final studentsEnrolled = List<Map<String, dynamic>>.from(
          rawList.map((e) => Map<String, dynamic>.from(e as Map)),
        );

        // Build index: uid -> list index
        final indexByUid = <String, int>{};
        for (var i = 0; i < studentsEnrolled.length; i++) {
          final entry = studentsEnrolled[i];
          for (final key in entry.keys) {
            indexByUid[key] = i;
          }
        }

        final missing = <String>[];
        final unchanged = <String>[];
        var updatedCount = 0;

        updates.forEach((uid, newDifficulty) {
          final idx = indexByUid[uid];
          if (idx == null) {
            missing.add(uid);
            return;
          }

          final wrapper = Map<String, dynamic>.from(studentsEnrolled[idx]);
          final studentData = Map<String, dynamic>.from(
            (wrapper[uid] as Map?) ?? const {},
          );

          final current =
              (studentData[FirebaseConstants.room.difficulty] as String?)
                  ?.trim();
          if (current == newDifficulty) {
            unchanged.add(uid);
            return;
          }

          studentData[FirebaseConstants.room.difficulty] = newDifficulty;
          wrapper[uid] = studentData;
          studentsEnrolled[idx] = wrapper;
          updatedCount++;
        });

        if (updatedCount > 0) {
          tx.update(docRef, {
            FirebaseConstants.room.studentsEnrolled: studentsEnrolled,
          });
        }
      });
    } on FirebaseException catch (e, stackTrace) {
      // debugPrintStack(stackTrace: stackTrace);
      rethrow; // rethrow so caller can handle it if needed
    } catch (e, stackTrace) {
      // debugPrintStack(stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Stream<Map<DifficultyEnum, List<PollChoiceGroup>>> watchQuizStatistics({
    required RoomModel room,
    String questionDocId = 'trjNujthLLZTK1cN0j8r',
    bool uniquePerStudent = true,
  }) async* {
    try {
      final eleDocs = await getDocsByIds(
        collectionPath: FirebaseConstants.ele.name,
        ids: room.preferredLessons,
      );

      final eles = eleDocs.map((e) => LessonModel.fromDoc(e)).toList();

      final roomRef = _db.collection(FirebaseConstants.room.name).doc(room.id);

      yield* roomRef.snapshots().map((roomSnap) {
        if (!roomSnap.exists) {
          throw StateError('Room not found: $room');
        }

        final roomData = roomSnap.data() as Map<String, dynamic>;

        final raw =
            roomData[FirebaseConstants.room.studentsEnrolled] ?? const [];
        final list = List<dynamic>.from(raw as List);
        final students = list
            .map(
              (e) => StudentEnrollmentModel.fromArrayEntry(
                Map<String, dynamic>.from(e as Map),
              ),
            )
            .toList();

        final List<ExamStatModel> appendedExams = [];

        for (final i in students) {
          final difficulty = i.difficulty;

          final exams = i.examination.map((e) {
            final lesson = eles.firstWhere((element) => element.id == e.lid);
            final questionLists = lesson.exam.getDiffQuestions(difficulty);
            PostQuestionModel question = questionLists.firstWhere(
              (element) => element.id == e.qid,
            );
            final answer = PostQuestionChoicesModel(
              id: e.answer.id,
              choice: e.answer.choice,
              isCorrectChoice: e.answer.isCorrectChoice,
            );
            question = question.copyWith(answer: answer);

            final ExamStatModel exam = ExamStatModel(
              question: question,
              difficulty: difficulty,
            );

            return exam;
          }).toList();

          appendedExams.addAll(exams);
        }

        return appendedExams.toPollGroupsByDifficulty();
      });
    } catch (e) {
      rethrow;
    }
  }

  CollectionReference<Map<String, dynamic>> _queueCol(
    String roomId,
  ) => _db.collection(
    '${FirebaseConstants.room.name}/$roomId/${FirebaseConstants.room.helpRequests}',
  );

  /// WEB: live stream of PENDING requests (newest first)
  @override
  Stream<List<HelpRequestModel>> streamPendingRequests(String roomId) {
    return _queueCol(roomId)
        .where('status', isEqualTo: HelpQueueStatus.pending.name)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (q) =>
              q.docs.map((d) => HelpRequestModel.fromJson(d.data())).toList(),
        );
  }

  /// WEB: mark a request as DONE (or other status)
  @override
  Future<void> updateRequestStatus({
    required String roomId,
    required String requestId,
    required HelpQueueStatus status,
  }) async {
    await _queueCol(roomId).doc(requestId).update({
      'status': status.name,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  @override
  Stream<List<String>> streamJournalFeedback(String roomId) async* {
    try {
      final roomRef = _db.collection(FirebaseConstants.room.name).doc(roomId);

      yield* roomRef.snapshots().map((roomSnap) {
        if (!roomSnap.exists) {
          throw StateError('Room not found: $roomId');
        }

        final roomData = roomSnap.data() as Map<String, dynamic>;

        final raw =
            roomData[FirebaseConstants.room.studentsEnrolled] ?? const [];
        final list = List<dynamic>.from(raw as List);
        // debugPrint('LIST: $list');
        final feedbacks = list.map((e) {
          final map = Map<String, dynamic>.from(e as Map);
          final key = map.keys.first;
          final data = map[key] as Map<String, dynamic>;
          final bool hasFeedback = data.containsKey('journalFeedback');
          final String? feedback = hasFeedback
              ? data['journalFeedback'] as String?
              : null;
          // debugPrint('FEEDBACK: $feedback');

          if (hasFeedback) {
            return feedback;
          }
        }).toList();

        final List<String> cleaned = feedbacks.whereType<String>().toList();

        return cleaned;
      });
    } catch (e) {
      rethrow;
    }
  }
}

String genCodeExcluding({
  int len = 6,
  Set<String> excludedCodes = const {},
  int maxAttempts = 50,
}) {
  final rand = Random.secure();
  const alphabet = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789'; // safe characters

  for (var i = 0; i < maxAttempts; i++) {
    final code = List.generate(
      len,
      (_) => alphabet[rand.nextInt(alphabet.length)],
    ).join();
    final upper = code.toUpperCase();
    if (!excludedCodes.contains(upper)) {
      return upper;
    }
  }
  throw Exception(
    'Unable to generate a unique code after $maxAttempts attempts.',
  );
}

Future<List<DocumentSnapshot<Map<String, dynamic>>>> getDocsByIds({
  required String collectionPath,
  required List<String> ids,
}) async {
  if (ids.isEmpty) return [];

  // whereIn allows max 10 items, so chunk the IDs.
  const int chunkSize = 10;
  final chunks = <List<String>>[];
  for (var i = 0; i < ids.length; i += chunkSize) {
    chunks.add(
      ids.sublist(i, i + chunkSize > ids.length ? ids.length : i + chunkSize),
    );
  }

  final futures = chunks.map((chunk) {
    return FirebaseFirestore.instance
        .collection(collectionPath)
        .where(FieldPath.documentId, whereIn: chunk)
        .get();
  });

  final snapshots = await Future.wait(futures);
  final allDocs = snapshots.expand((q) => q.docs).toList();

  // Optional: return in the same order as the input ids
  final byId = {for (final d in allDocs) d.id: d};
  return ids
      .map((id) => byId[id])
      .whereType<DocumentSnapshot<Map<String, dynamic>>>()
      .toList();
}
