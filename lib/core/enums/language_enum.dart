import 'package:flutter/material.dart';

enum LanguageEnum {
  english,
  dutch,
  italian,
  portuguese,
  hungarian,
  greek;

  bool get isEnglish => this == english;
  bool get isDutch => this == dutch;
  bool get isItalian => this == italian;
  bool get isPortuguese => this == portuguese;
  bool get isHungarian => this == hungarian;
  bool get isGreek => this == greek;

  static LanguageEnum fromString(String value) {
    debugPrint('VALUE: $value');
    switch (value.toLowerCase()) {
      case 'english':
        return LanguageEnum.english;
      case 'dutch':
        return LanguageEnum.dutch;
      case 'italian':
        return LanguageEnum.italian;
      case 'portuguese':
        return LanguageEnum.portuguese;
      case 'hungarian':
        return LanguageEnum.hungarian;
      case 'greek':
        return LanguageEnum.greek;
      default:
        throw ArgumentError('Unknown LanguageEnum: $value');
    }
  }
}

extension LanguageEnumHelper on LanguageEnum {
  String get getLocaleString {
    switch (this) {
      case LanguageEnum.english:
        return 'en';
      case LanguageEnum.dutch:
        return 'nl';
      case LanguageEnum.italian:
        return 'it';
      case LanguageEnum.portuguese:
        return 'pt';
      case LanguageEnum.hungarian:
        return 'hu';
      case LanguageEnum.greek:
        return 'el';
    }
  }
}
