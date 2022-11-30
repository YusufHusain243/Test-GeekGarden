import 'package:geek_garden/controllers/product_api_controller.dart';
import 'package:get/get.dart';

class ProductApiBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ProductsApiController());
  }
}
