import 'director.dart';
import 'enterprise_website_builder.dart';
import 'simple_website_builder.dart';

void main() {
  final director = Director();

  final simpleWebsite = director.buildWebsite(SimpleWebsiteBuilder());
  print('Oddiy sayt: $simpleWebsite');

  final enterpriseWebsite = director.buildWebsite(EnterpriseWebsiteBuilder());
  print('Korporativ sayt: $enterpriseWebsite');
}
