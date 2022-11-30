import 'package:get/get.dart';

class ProductsService extends GetConnect {
  final url = "https://fakestoreapi.com/products";
  // final url = "https://fakestoreapi.com/products/1";

  Future<Response> getData() => get(url);
}
