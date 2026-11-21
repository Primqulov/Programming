import 'cms.dart';
import 'website_builder.dart';

class EnterpriseWebsiteBuilder extends WebsiteBuilder {
  @override
  void buildName() {
    website.name = 'Enterprise Website';
  }

  @override
  void buildCms() {
    website.cms = Cms.wordpress;
  }

  @override
  void buildPrice() {
    website.price = 1000;
  }
}
