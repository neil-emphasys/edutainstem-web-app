// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LessonModel _$LessonModelFromJson(Map<String, dynamic> json) => _LessonModel(
  title: json['title'] as String,
  description: json['description'] as String,
  durationMinutes: const NumToInt().fromJson(json['durationMinutes']),
  ageRange: AgeRange.fromJson(json['ageRange'] as Map<String, dynamic>),
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  theoryContent: TheoryContent.fromJson(
    json['theoryContent'] as Map<String, dynamic>,
  ),
  exam: Exam.fromJson(json['exam'] as Map<String, dynamic>),
  isActive: json['isActive'] as bool? ?? true,
);

Map<String, dynamic> _$LessonModelToJson(_LessonModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'durationMinutes': const NumToInt().toJson(instance.durationMinutes),
      'ageRange': instance.ageRange.toJson(),
      'tags': instance.tags,
      'theoryContent': instance.theoryContent.toJson(),
      'exam': instance.exam.toJson(),
      'isActive': instance.isActive,
    };

_AgeRange _$AgeRangeFromJson(Map<String, dynamic> json) => _AgeRange(
  max: const NumToInt().fromJson(json['max']),
  min: const NumToInt().fromJson(json['min']),
);

Map<String, dynamic> _$AgeRangeToJson(_AgeRange instance) => <String, dynamic>{
  'max': const NumToInt().toJson(instance.max),
  'min': const NumToInt().toJson(instance.min),
};

_TheoryContent _$TheoryContentFromJson(Map<String, dynamic> json) =>
    _TheoryContent(
      basic: (json['basic'] as List<dynamic>)
          .map((e) => Slide.fromJson(e as Map<String, dynamic>))
          .toList(),
      intermediate: (json['intermediate'] as List<dynamic>)
          .map((e) => Slide.fromJson(e as Map<String, dynamic>))
          .toList(),
      advanced: (json['advanced'] as List<dynamic>)
          .map((e) => Slide.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TheoryContentToJson(_TheoryContent instance) =>
    <String, dynamic>{
      'basic': instance.basic.map((e) => e.toJson()).toList(),
      'intermediate': instance.intermediate.map((e) => e.toJson()).toList(),
      'advanced': instance.advanced.map((e) => e.toJson()).toList(),
    };

_Exam _$ExamFromJson(Map<String, dynamic> json) => _Exam(
  basic: (json['basic'] as List<dynamic>)
      .map((e) => PostQuestionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  intermediate: (json['intermediate'] as List<dynamic>)
      .map((e) => PostQuestionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  advanced: (json['advanced'] as List<dynamic>)
      .map((e) => PostQuestionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ExamToJson(_Exam instance) => <String, dynamic>{
  'basic': instance.basic.map((e) => e.toJson()).toList(),
  'intermediate': instance.intermediate.map((e) => e.toJson()).toList(),
  'advanced': instance.advanced.map((e) => e.toJson()).toList(),
};

_Slide _$SlideFromJson(Map<String, dynamic> json) => _Slide(
  title: json['title'] as String?,
  content: json['content'] as String?,
  caption: json['caption'] as String?,
  imageURL: json['imageURL'] as String?,
  videoURL: json['videoURL'] as String?,
  link: json['link'] as String?,
  type: $enumDecode(_$SlideTypeEnumMap, json['type']),
  hints: (json['hints'] as List<dynamic>?)
      ?.map((e) => Hint.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SlideToJson(_Slide instance) => <String, dynamic>{
  'title': instance.title,
  'content': instance.content,
  'caption': instance.caption,
  'imageURL': instance.imageURL,
  'videoURL': instance.videoURL,
  'link': instance.link,
  'type': _$SlideTypeEnumMap[instance.type]!,
  'hints': instance.hints?.map((e) => e.toJson()).toList(),
};

const _$SlideTypeEnumMap = {
  SlideType.text: 'text',
  SlideType.textWithImage: 'textWithImage',
  SlideType.image: 'image',
  SlideType.video: 'video',
  SlideType.textWithLink: 'textWithLink',
};

_Hint _$HintFromJson(Map<String, dynamic> json) => _Hint(
  imageURL: json['imageURL'] as String?,
  title: json['title'] as String?,
  content: json['content'] as String?,
);

Map<String, dynamic> _$HintToJson(_Hint instance) => <String, dynamic>{
  'imageURL': instance.imageURL,
  'title': instance.title,
  'content': instance.content,
};
