import 'dart:convert';
import 'dart:typed_data';

import 'package:file_saver/file_saver.dart';

class JsonDownloadService {
  /// Saves a .json file built from either:
  /// - [input] as String (JSON text), or
  /// - [input] as Map<String, dynamic>.
  ///
  /// Returns the saved file path (desktop/mobile) or `null` on web (download triggered).
  Future<String?> saveJson({
    required Object input,
    String filename = 'data',
    bool pretty = true,
    bool validateJson = true,
  }) async {
    try {
      final String jsonString = _coerceToJsonString(
        input: input,
        pretty: pretty,
        validateJson: validateJson,
      );

      final bytes = Uint8List.fromList(utf8.encode(jsonString));

      // file_saver handles Android/iOS/Desktop/Web
      // On web this triggers a browser download and returns null.
      final result = await FileSaver.instance.saveFile(
        name: filename,
        bytes: bytes,
        fileExtension: 'json',
        mimeType: MimeType.json, // 'application/json' under the hood is fine
      );

      // On mobile/desktop: result is a file path. On web: usually null.
      return result;
    } catch (e) {
      rethrow;
    }
  }

  String _coerceToJsonString({
    required Object input,
    required bool pretty,
    required bool validateJson,
  }) {
    final encoder = pretty
        ? const JsonEncoder.withIndent('  ')
        : const JsonEncoder();

    if (input is Map<String, dynamic>) {
      return encoder.convert(input);
    }

    if (input is String) {
      if (!validateJson) return input; // trust caller

      // Try to parse & re-encode to ensure valid JSON (and pretty-print if requested).
      try {
        final parsed = json.decode(input);
        return pretty
            ? const JsonEncoder.withIndent('  ').convert(parsed)
            : json.encode(parsed);
      } catch (_) {
        // If you prefer to hard-fail on invalid JSON:
        // throw FormatException('Provided String is not valid JSON');
        // Or just save the raw string anyway:
        return input;
      }
    }

    throw ArgumentError(
      'Unsupported input type. Provide a JSON String or a Map<String, dynamic>.',
    );
  }
}
