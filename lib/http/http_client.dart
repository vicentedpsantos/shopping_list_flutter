import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:shopping_list/utils/logger.dart';

class HttpClient {
  const HttpClient({required this.baseUrl});

  final String baseUrl;

  Future<http.Response> doPost(path, payload) async {
    final response = await http.post(
      getUrl(path),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(payload),
    );

    logInfo('HttpClient', [
      'POST $baseUrl/$path',
      'params: $payload',
      'Response Status: ${response.statusCode}',
      'Response body: ${response.body}'
    ]);

    return response;
  }

  Uri getUrl(path) {
    return Uri.https(baseUrl, path);
  }
}
