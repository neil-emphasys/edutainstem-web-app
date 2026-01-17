import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edutainstem/core/enums/difficulty_enum.dart';
import 'package:edutainstem/domain/models/post_question/post_question_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/v4.dart';

part 'lesson_model.freezed.dart';
part 'lesson_model.g.dart';

/// ---- Converters ----

class NumToInt implements JsonConverter<int, Object?> {
  const NumToInt();
  @override
  int fromJson(Object? value) {
    if (value == null) return 0;
    if (value is int) return value;
    if (value is num) return value.toInt();
    if (value is String) return int.tryParse(value) ?? 0;
    return 0;
  }

  @override
  Object toJson(int value) => value;
}

/// Enum for slide types
enum SlideType {
  @JsonValue('text')
  text,
  @JsonValue('textWithImage')
  textWithImage,
  @JsonValue('image')
  image,
  @JsonValue('video')
  video,
  @JsonValue('textWithLink')
  textWithLink,
}

@freezed
abstract class LessonModel with _$LessonModel {
  @JsonSerializable(explicitToJson: true)
  const factory LessonModel({
    required String title,
    required String description,
    @NumToInt() required int durationMinutes,
    required AgeRange ageRange,
    required List<String> tags,
    required TheoryContent theoryContent,
    required Exam exam,
    @Default(true) bool isActive,

    /// Optional: keep Firestore doc id if you want it
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
  }) = _LessonModel;

  factory LessonModel.fromJson(Map<String, dynamic> json) =>
      _$LessonModelFromJson(json);

  /// Build from Firestore doc snapshot
  factory LessonModel.fromDoc(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data();
    if (data == null) {
      throw StateError('Document ${doc.id} has no data');
    }
    final model = LessonModel.fromJson(data);
    return model.copyWith(id: doc.id); // attach doc id
  }

  /// Firestore-ready map for writes (id is ignored)
  // Map<String, dynamic> toDoc() => toJson();

  factory LessonModel.initial() {
    return LessonModel(
      id: const UuidV4().generate(),
      title: '',
      description: '',
      durationMinutes: 0,
      ageRange: const AgeRange(max: 0, min: 0),
      tags: [],
      theoryContent: const TheoryContent(
        basic: [],
        intermediate: [],
        advanced: [],
      ),
      exam: const Exam(basic: [], intermediate: [], advanced: []),
    );
  }
}

@freezed
abstract class AgeRange with _$AgeRange {
  const factory AgeRange({
    @NumToInt() required int max,
    @NumToInt() required int min,
  }) = _AgeRange;

  factory AgeRange.fromJson(Map<String, dynamic> json) =>
      _$AgeRangeFromJson(json);
}

@freezed
abstract class TheoryContent with _$TheoryContent {
  @JsonSerializable(explicitToJson: true)
  const factory TheoryContent({
    required List<Slide> basic,
    required List<Slide> intermediate,
    required List<Slide> advanced,
  }) = _TheoryContent;

  factory TheoryContent.fromJson(Map<String, dynamic> json) =>
      _$TheoryContentFromJson(json);
}

@freezed
abstract class Exam with _$Exam {
  @JsonSerializable(explicitToJson: true)
  const factory Exam({
    required List<PostQuestionModel> basic,
    required List<PostQuestionModel> intermediate,
    required List<PostQuestionModel> advanced,
  }) = _Exam;

  factory Exam.fromJson(Map<String, dynamic> json) => _$ExamFromJson(json);
}

extension ExamHelper on Exam {
  List<PostQuestionModel> getDiffQuestions(DifficultyEnum difficulty) {
    switch (difficulty) {
      case DifficultyEnum.basic:
        return basic;
      case DifficultyEnum.intermediate:
        return intermediate;
      case DifficultyEnum.advance:
        return advanced;
      default:
        return [];
    }
  }
}

@freezed
abstract class Slide with _$Slide {
  @JsonSerializable(explicitToJson: true)
  const factory Slide({
    String? title,
    String? content,
    String? caption,
    String? imageURL,
    String? videoURL,
    String? link,
    required SlideType type,
    List<Hint>? hints,
  }) = _Slide;

  /* factory Slide.fromJson(Map<String, dynamic> json) {
    final asd = _$SlideFromJson(json);
    return asd;
  } */

  factory Slide.fromJson(Map<String, dynamic> json) => _$SlideFromJson(json);
}

@freezed
abstract class Hint with _$Hint {
  @JsonSerializable(explicitToJson: true)
  const factory Hint({String? imageURL, String? title, String? content}) =
      _Hint;

  /* factory Slide.fromJson(Map<String, dynamic> json) {
    final asd = _$SlideFromJson(json);
    return asd;
  } */

  factory Hint.fromJson(Map<String, dynamic> json) => _$HintFromJson(json);
}

// @freezed
// abstract class LessonSlideModel with _$LessonSlideModel {
//   const factory LessonSlideModel({
//     String? title,
//     String? content,
//     String? caption,
//     String? imageURL,
//     String? videoURL,
//     String? link,
//     required SlideType type,
//   }) = _LessonSlideModel;

//   factory LessonSlideModel.fromJson(Map<String, dynamic> json) =>
//       _$LessonSlideModelFromJson(json);
// }

// extension LessonModelHelper on LessonModel {}

extension LessonModelHelper on LessonModel {
  List<PostQuestionModel> getExam({required DifficultyEnum difficulty}) {
    List<PostQuestionModel> slides = [];

    switch (difficulty) {
      case DifficultyEnum.basic:
        slides = exam.basic;
        break;
      case DifficultyEnum.intermediate:
        slides = exam.intermediate;
        break;
      case DifficultyEnum.advance:
        slides = exam.advanced;
        break;
    }

    return slides;
  }

  List<Slide> getSlides({required DifficultyEnum difficulty}) {
    List<Slide> slides = [];

    switch (difficulty) {
      case DifficultyEnum.basic:
        slides = theoryContent.basic;
        break;
      case DifficultyEnum.intermediate:
        slides = theoryContent.intermediate;
        break;
      case DifficultyEnum.advance:
        slides = theoryContent.advanced;
        break;
    }

    return slides;
  }
}

extension ListLessonModelHelper on List<LessonModel> {
  List<String> getUniqueTags() {
    final seen = <String>{};
    final result = <String>[];
    for (final lesson in this) {
      for (final tag in lesson.tags) {
        if (seen.add(tag)) result.add(tag);
      }
    }
    return result;
  }

  List<PostQuestionModel> getExamQuestions({
    required DifficultyEnum difficulty,
  }) {
    switch (difficulty) {
      case DifficultyEnum.basic:
        return expand((lesson) => lesson.exam.basic).toList();

      case DifficultyEnum.intermediate:
        return expand((lesson) => lesson.exam.intermediate).toList();

      case DifficultyEnum.advance:
        return expand((lesson) => lesson.exam.advanced).toList();
    }
  }
}
