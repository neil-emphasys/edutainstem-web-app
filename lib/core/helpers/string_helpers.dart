extension StringHelper on String {
  /// Capitalize the first letter, leave the rest as-is
  String capitalize() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }

  /// Capitalize the first letter of every word
  String capitalizeWords() {
    if (isEmpty) return this;
    return split(' ')
        .map(
          (word) =>
              word.isNotEmpty ? word[0].toUpperCase() + word.substring(1) : '',
        )
        .join(' ');
  }

  /// Convert the entire string to title case (lowercase except initials)
  String toTitleCase() {
    return toLowerCase().capitalizeWords();
  }

  /// Lowercase first letter, keep rest
  String decapitalize() {
    if (isEmpty) return this;
    return this[0].toLowerCase() + substring(1);
  }

  /// Uppercase entire string
  String upper() => toUpperCase();

  /// Lowercase entire string
  String lower() => toLowerCase();

  /// Check if the string is null/empty/only whitespace
  bool get isBlank => trim().isEmpty;
}
