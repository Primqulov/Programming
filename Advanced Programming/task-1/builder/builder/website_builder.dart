import 'website.dart';

abstract class WebsiteBuilder {
  late Website website;

  void createWebsite() {
    website = Website();
  }

  void buildName();
  void buildCms();
  void buildPrice();
}
