import 'package:get/get.dart';

class ProductsService extends GetConnect {
  final url = "https://fakestoreapi.com/products";

  Future<Response> getData() => get(url);
}
