enum DifficultyEnum {
  basic,
  intermediate,
  advance;

  bool get isBasic => this == basic;
  bool get isIntermediate => this == intermediate;
  bool get isAdvance => this == advance;

  static DifficultyEnum fromString(String value) {
    switch (value.toLowerCase()) {
      case 'basic':
        return DifficultyEnum.basic;
      case 'intermediate':
        return DifficultyEnum.intermediate;
      case 'advance':
        return DifficultyEnum.advance;
      default:
        throw ArgumentError('Unknown DifficultyEnum: $value');
    }
  }
}

/* extension DifficultyEnumHelper on DifficultyEnum {
  String get getLocaleString {
    switch (this) {
      case DifficultyEnum.basic:
        return 'en';
      case DifficultyEnum.dutch:
        return 'nl';
      case DifficultyEnum.italian:
        return 'it';
      case LanguageEnum.portuguese:
        return 'pt';
      case LanguageEnum.hungarian:
        return 'hu';
      case LanguageEnum.greek:
        return 'el';
    }
  }
} */
