import 'http.dart';
import 'methods.dart';

class HttpBuilder {
  Methods _method = Methods.get;
  String? _url;
  String? _headers;
  String? _body;
  bool _secure = false;

  HttpBuilder method(Methods value) {
    _method = value;
    return this;
  }

  HttpBuilder url(String value) {
    _url = value;
    return this;
  }

  HttpBuilder headers(String value) {
    _headers = value;
    return this;
  }

  HttpBuilder body(String value) {
    _body = value;
    return this;
  }

  HttpBuilder secure(bool value) {
    _secure = value;
    return this;
  }

  Http build() {
    final url = _url;
    if (url == null || url.isEmpty) {
      throw StateError('Avval URL kiriting.');
    }
    return Http(_method, url, _headers, _body, _secure);
  }
}
