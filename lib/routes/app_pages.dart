import 'package:geek_garden/bindings/add_binding.dart';
import 'package:geek_garden/bindings/edit_binding.dart';
import 'package:geek_garden/pages/add_product.dart';
import 'package:geek_garden/pages/edit_product.dart';
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
      name: RouteName.addProduct,
      page: () => const AddProduct(),
      binding: AddBinding(),
    ),
    GetPage(
      name: RouteName.editProduct,
      page: () => EditProduct(),
      binding: EditBinding(),
    ),
    GetPage(
      name: RouteName.productApi,
      page: () => const ProductApiPage(),
    ),
  ];
}
