import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:flutter/material.dart';

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

extension DifficultyEnumHelper on DifficultyEnum {
  Color get toColor {
    switch (this) {
      case DifficultyEnum.basic:
        return AppColors.green;
      case DifficultyEnum.intermediate:
        return AppColors.yellow;
      case DifficultyEnum.advance:
        return AppColors.red;
    }
  }
}
