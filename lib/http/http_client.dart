import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpClient {
  const HttpClient({required this.baseUrl});

  final String baseUrl;

  void doPost(path, payload) {
    http.post(
      getUrl(path),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(payload),
    );
  }

  Uri getUrl(path) {
    return Uri.https(baseUrl, path);
  }
}
