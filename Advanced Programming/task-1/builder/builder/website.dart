import 'cms.dart';

class Website {
  String name = '';
  Cms cms = Cms.tilda;
  int price = 0;

  @override
  String toString() {
    return 'Website(name: $name, cms: ${cms.name.toUpperCase()}, price: $price)';
  }
}
