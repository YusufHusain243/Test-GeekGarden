import 'package:flutter/material.dart';
import 'package:geek_garden/models/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController with StateMixin<String?> {
  var products = List<Product>.empty().obs;

  void snackBarError(String msg) {
    Get.snackbar(
      "ERROR",
      msg,
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.white,
    );
  }

  void snackBarSuccess(String msg) {
    Get.snackbar(
      "SUCCESS",
      msg,
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.white,
    );
  }

  void add(Product product) {
    change(null, status: RxStatus.loading());
    Get.back();
    try {
      products.add(product);
      change(null, status: RxStatus.success());
      snackBarSuccess('Input Data Success');
    } catch (e) {
      change(null, status: RxStatus.error());
      snackBarSuccess('Input Data Failed');
    }
  }
}
