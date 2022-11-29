import 'package:geek_garden/pages/product_page.dart';
import 'package:geek_garden/pages/product_api_page.dart';
import 'package:geek_garden/routes/route_name.dart';
import 'package:get/get.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: RouteName.product,
      page: () => const ProductPage(),
    ),
    GetPage(
      name: RouteName.product,
      page: () => const ProductApiPage(),
    ),
  ];
}
