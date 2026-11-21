import 'website.dart';
import 'website_builder.dart';

class Director {
  Website buildWebsite(WebsiteBuilder builder) {
    builder.createWebsite();
    builder.buildName();
    builder.buildPrice();
    builder.buildCms();

    return builder.website;
  }
}
