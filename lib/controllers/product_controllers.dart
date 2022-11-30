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

  Product productById(String id) {
    return products.firstWhere((element) => element.id == id);
  }

  void edit(Product product) {
    change(null, status: RxStatus.loading());
    Get.back();
    try {
      final getProduct = productById(product.id.toString());
      getProduct.title = product.title;
      getProduct.price = product.price;
      getProduct.description = product.description;
      getProduct.category = product.category;
      getProduct.image = product.image;
      getProduct.rate = product.rate;
      products.refresh();
      change(null, status: RxStatus.success());
      snackBarSuccess('Edit Data Success');
    } catch (e) {
      change(null, status: RxStatus.error());
      snackBarSuccess('Edit Data Failed');
    }
  }

  void delete(String id) async {
    await Get.defaultDialog(
      title: "DELETE",
      middleText: "Are you sure delete this product?",
      textConfirm: "Yes",
      confirmTextColor: Colors.white,
      onConfirm: () {
        Get.back();
        Get.back();
        change(null, status: RxStatus.loading());
        try {
          products.removeWhere((element) => element.id == id);
          change(null, status: RxStatus.success());
          snackBarSuccess('Delete Data Success');
        } catch (e) {
          change(null, status: RxStatus.error());
          snackBarSuccess('Delete Data Failed');
        }
      },
      textCancel: "No",
    );
  }
}
