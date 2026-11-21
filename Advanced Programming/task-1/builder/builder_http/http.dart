import 'dart:convert';
import 'dart:io';

import 'http_builder.dart';
import 'methods.dart';

class Http {
  final Methods method;
  final String url;
  final String? headers;
  final String? body;
  final bool secure;

  Http(this.method, this.url, this.headers, this.body, this.secure);

  static HttpBuilder builder() => HttpBuilder();

  @override
  String toString() {
    return '''
${secure ? 'HTTPS' : 'HTTP'} Request:
{
  method: ${method.name.toUpperCase()}
  url: $url
  headers: $headers
  body: $body
  secure: $secure
}''';
  }

  Future<String> send() async {
    final client = HttpClient();
    try {
      final request = await client.getUrl(Uri.parse(url));
      final response = await request.close();
      return await utf8.decoder.bind(response).join();
    } finally {
      client.close(force: true);
    }
  }
}
