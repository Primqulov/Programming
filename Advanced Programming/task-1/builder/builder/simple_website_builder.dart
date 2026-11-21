import 'cms.dart';
import 'website_builder.dart';

class SimpleWebsiteBuilder extends WebsiteBuilder {
  @override
  void buildName() {
    website.name = 'Simple Website Builder';
  }

  @override
  void buildCms() {
    website.cms = Cms.tilda;
  }

  @override
  void buildPrice() {
    website.price = 500;
  }
}
