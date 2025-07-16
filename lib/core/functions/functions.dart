/* DateTime? _fromTimestamp(dynamic value) {
  if (value == null) return null;
  if (value is Timestamp) return value.toDate();
  if (value is String) return DateTime.tryParse(value);
  return null;
}

Timestamp _toTimestamp(DateTime date) => Timestamp.fromDate(date);
 */
