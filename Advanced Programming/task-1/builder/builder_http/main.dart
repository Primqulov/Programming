import 'http.dart';
import 'methods.dart';

Future<void> main() async {
  final request = Http.builder()
      .method(Methods.get)
      .url('https://jsonplaceholder.typicode.com/posts/1')
      .build();

  final request2 = Http.builder()
      .method(Methods.get)
      .url('https://jsonplaceholder.typicode.com/posts/2')
      .build();

  print(await request.send());
  print(await request2.send());
}
