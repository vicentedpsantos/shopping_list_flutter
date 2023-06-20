import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:shopping_list/utils/logger.dart';

class HttpClient {
  const HttpClient({required this.baseUrl});

  final String baseUrl;

  Future<http.Response> doPost(String path, Map payload) async {
    final response = await http.post(
      _getUrl(path),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(payload),
    );

    logInfo('HttpClient', [
      'POST $baseUrl/$path',
      'params: $payload',
      'response status: ${response.statusCode}',
      'response body: ${response.body}'
    ]);

    return response;
  }

  Future<http.Response> doGet(String path) async {
    final response = await http.get(
      _getUrl(path),
    );

    logInfo('HttpClient', [
      'GET $baseUrl/$path',
      'response status: ${response.statusCode}',
      'response body: ${response.body}'
    ]);

    return response;
  }

  Uri _getUrl(path) {
    return Uri.https(baseUrl, path);
  }
}
