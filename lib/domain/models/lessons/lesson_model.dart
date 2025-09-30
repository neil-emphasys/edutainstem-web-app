import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_model.freezed.dart';
part 'lesson_model.g.dart'; // only if you're using json_serializable

// @freezed
// abstract class LessonModel with _$LessonModel {
//   const factory LessonModel({
//     required String id,
//     required String title,
//     required String description,
//     required int hours,
//     required int minutes,
//     required String subject,
//     required String topic,
//     required List<LessonSlidesModel> slides,
//     // Add tag properties here
//   }) = _LessonModel;

//   factory LessonModel.fromJson(Map<String, dynamic> json) =>
//       _$LessonModelFromJson(json);

//   factory LessonModel.initial() {
//     return LessonModel(
//       id: const UuidV4().generate(),
//       title: '',
//       description: '',
//       hours: 0,
//       minutes: 0,
//       subject: '',
//       topic: '',
//       slides: [],
//     );
//   }
// }

// @freezed
// abstract class LessonSlidesModel with _$LessonSlidesModel {
//   const factory LessonSlidesModel({
//     required String id,
//     required String title,
//     required String content,
//     // Add tag properties here
//   }) = _LessonSlidesModel;

//   factory LessonSlidesModel.fromJson(Map<String, dynamic> json) =>
//       _$LessonSlidesModelFromJson(json);

//   factory LessonSlidesModel.initial() {
//     return LessonSlidesModel(
//       id: const UuidV4().generate(),
//       title: '',
//       content: '',
//     );
//   }
// }

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
  const factory LessonModel({
    // required String id,
    required String title,
    required String description,
    @NumToInt() required int durationMinutes,
    required AgeRange ageRange,
    required List<String> tags,
    required TheoryContent theoryContent,

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

  factory LessonModel.initial() {
    return const LessonModel(
      title: '',
      description: '',
      durationMinutes: 0,
      ageRange: AgeRange(max: 0, min: 0),
      tags: [],
      theoryContent: TheoryContent(basic: []),
    );
  }

  /// Firestore-ready map for writes (id is ignored)
  // Map<String, dynamic> toDoc() => toJson();
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
  const factory TheoryContent({required List<Slide> basic}) = _TheoryContent;

  factory TheoryContent.fromJson(Map<String, dynamic> json) =>
      _$TheoryContentFromJson(json);
}

@freezed
abstract class Slide with _$Slide {
  const factory Slide({
    String? title,
    String? content,
    String? caption,
    String? imageURL,
    String? videoURL,
    String? link,
    required SlideType type,
  }) = _Slide;

  factory Slide.fromJson(Map<String, dynamic> json) => _$SlideFromJson(json);
}
