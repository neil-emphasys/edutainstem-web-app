// validator_service.dart
import 'package:flutter/material.dart';

class ValidatorService {
  const ValidatorService();

  // Combine multiple validators; returns the first error message (if any)
  FormFieldValidator<String> compose(
    List<FormFieldValidator<String>> validators,
  ) {
    return (value) {
      for (final v in validators) {
        final error = v(value);
        if (error != null) return error;
      }
      return null;
    };
  }

  /// Wrap a validator so it only runs when the field is non-empty.
  FormFieldValidator<String> optional(FormFieldValidator<String> validator) {
    return (value) {
      final v = value?.trim() ?? '';
      if (v.isEmpty) return null;
      return validator(value);
    };
  }

  // --- Generic validators ---

  FormFieldValidator<String> required({String fieldName = 'This field'}) {
    return (value) {
      final v = value?.trim() ?? '';
      return v.isEmpty ? '$fieldName is required.' : null;
    };
  }

  FormFieldValidator<String> minLen(int min, {String? fieldName}) {
    return (value) {
      final v = value ?? '';
      if (v.isEmpty) return null;
      return v.length < min
          ? '${fieldName ?? 'Value'} must be at least $min characters.'
          : null;
    };
  }

  FormFieldValidator<String> maxLen(int max, {String? fieldName}) {
    return (value) {
      final v = value ?? '';
      if (v.isEmpty) return null;
      return v.length > max
          ? '${fieldName ?? 'Value'} must be at most $max characters.'
          : null;
    };
  }

  FormFieldValidator<String> lengthBetween({
    int? min,
    int? max,
    String? fieldName,
  }) {
    assert(min != null || max != null, 'Specify min and/or max.');
    return (value) {
      final v = value ?? '';
      if (v.isEmpty) return null;
      if (min != null && v.length < min) {
        return '${fieldName ?? 'Value'} must be at least $min characters.';
      }
      if (max != null && v.length > max) {
        return '${fieldName ?? 'Value'} must be at most $max characters.';
      }
      return null;
    };
  }

  FormFieldValidator<String> email({
    String message = 'Invalid email address.',
  }) {
    final regex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
    return (value) {
      final v = value?.trim() ?? '';
      if (v.isEmpty) return null;
      return regex.hasMatch(v) ? null : message;
    };
  }

  FormFieldValidator<String> regex(
    Pattern pattern, {
    String message = 'Invalid format.',
  }) {
    final re = RegExp(pattern.toString());
    return (value) {
      final v = value ?? '';
      if (v.isEmpty) return null;
      return re.hasMatch(v) ? null : message;
    };
  }

  FormFieldValidator<String> alphaNum({
    String message = 'Only letters and numbers are allowed.',
  }) {
    final re = RegExp(r'^[A-Za-z0-9]+$');
    return (value) {
      final v = value ?? '';
      if (v.isEmpty) return null;
      return re.hasMatch(v) ? null : message;
    };
  }

  FormFieldValidator<String> numeric({
    bool integerOnly = false,
    String? fieldName,
  }) {
    return (value) {
      final v = value?.trim() ?? '';
      if (v.isEmpty) return null;

      if (integerOnly) {
        return int.tryParse(v) == null
            ? '${fieldName ?? 'Value'} must be an integer.'
            : null;
      } else {
        return num.tryParse(v) == null
            ? '${fieldName ?? 'Value'} must be a number.'
            : null;
      }
    };
  }

  FormFieldValidator<String> numberRange({
    double? min,
    double? max,
    bool inclusive = true,
    String? fieldName,
  }) {
    assert(min != null || max != null, 'Specify min and/or max.');
    return (value) {
      final v = value?.trim() ?? '';
      if (v.isEmpty) return null;
      final n = num.tryParse(v);
      if (n == null) return '${fieldName ?? 'Value'} must be a number.';

      if (min != null) {
        if (inclusive ? n < min : n <= min) {
          return '${fieldName ?? 'Value'} must be ${inclusive ? '≥' : '>'} $min.';
        }
      }
      if (max != null) {
        if (inclusive ? n > max : n >= max) {
          return '${fieldName ?? 'Value'} must be ${inclusive ? '≤' : '<'} $max.';
        }
      }
      return null;
    };
  }

  FormFieldValidator<String> url({String message = 'Invalid URL.'}) {
    return (value) {
      final v = value?.trim() ?? '';
      if (v.isEmpty) return null;
      final uri = Uri.tryParse(v);
      if (uri == null || !(uri.hasScheme && uri.hasAuthority)) return message;
      return null;
    };
  }

  /// Generic phone (very permissive). Use [phMobile] for PH-specific.
  FormFieldValidator<String> phone({String message = 'Invalid phone number.'}) {
    // E.164-ish: + and 7–15 digits OR local 7–15 digits.
    final re = RegExp(r'^(\+?\d{7,15})$');
    return (value) {
      final v = value?.trim() ?? '';
      if (v.isEmpty) return null;
      return re.hasMatch(v) ? null : message;
    };
  }

  /// Philippines mobile: starts with 09xxxxxxxxx or +639xxxxxxxxx
  FormFieldValidator<String> phMobile({
    String message = 'Invalid PH mobile (09XXXXXXXXX or +639XXXXXXXXX).',
  }) {
    final re = RegExp(r'^(?:\+?63|0)9\d{9}$');
    return (value) {
      final v = value?.trim() ?? '';
      if (v.isEmpty) return null;
      return re.hasMatch(v) ? null : message;
    };
  }

  /// Password strength checks (customizable).
  FormFieldValidator<String> password({
    int minLength = 6,
    bool requireUpper = true,
    bool requireLower = true,
    bool requireNumber = true,
    bool requireSpecial = true,
  }) {
    return (value) {
      final v = value ?? '';
      if (v.isEmpty) return null;

      final missing = <String>[];

      if (v.length < minLength) missing.add('$minLength+ chars');
      if (requireUpper && !RegExp(r'[A-Z]').hasMatch(v))
        missing.add('uppercase');
      if (requireLower && !RegExp(r'[a-z]').hasMatch(v))
        missing.add('lowercase');
      if (requireNumber && !RegExp(r'[0-9]').hasMatch(v)) missing.add('number');
      if (requireSpecial &&
          !RegExp(r'[!@#\$%^&*(),.?":{}|<>_\-\[\]\\\/;`~+=]').hasMatch(v)) {
        missing.add('special');
      }

      return missing.isEmpty
          ? null
          : 'Password must contain: ${missing.join(', ')}.';
    };
  }

  /// Compare with another controller (e.g., confirm password).
  FormFieldValidator<String> matches(
    TextEditingController other, {
    String message = 'Values do not match.',
  }) {
    return (value) {
      if ((value ?? '') != other.text) return message;
      return null;
    };
  }

  /// Uppercase only (useful for fixed codes).
  FormFieldValidator<String> uppercaseOnly({
    String message = 'Only uppercase letters allowed.',
  }) {
    final re = RegExp(r'^[A-Z]+$');
    return (value) {
      final v = value ?? '';
      if (v.isEmpty) return null;
      return re.hasMatch(v) ? null : message;
    };
  }
}
