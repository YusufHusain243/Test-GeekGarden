import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geek_garden/models/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var products = List<Product>.empty().obs;

  late TextEditingController titleC;
  late TextEditingController priceC;
  late TextEditingController descriptionC;
  late TextEditingController categoryC;
  late TextEditingController imageC;
  late TextEditingController rateC;
  late TextEditingController countC;

  @override
  void onInit() {
    super.onInit();
    titleC = TextEditingController();
    priceC = TextEditingController();
    descriptionC = TextEditingController();
    categoryC = TextEditingController();
    imageC = TextEditingController();
    rateC = TextEditingController();
    countC = TextEditingController();
    products.add(
      Product(
        title: 'title',
        description: 'description',
        category: 'category',
        image: 'image',
        price: 100,
        rate: 111,
        count: 111,
      ),
    );
    products.add(
      Product(
        title: 'title',
        description: 'description',
        category: 'category',
        image: 'image',
        price: 100,
        rate: 111,
        count: 111,
      ),
    );
    products.add(
      Product(
        title: 'title',
        description: 'description',
        category: 'category',
        image: 'image',
        price: 100,
        rate: 111,
        count: 111,
      ),
    );
  }

  @override
  void onClose() {
    titleC.dispose();
    priceC.dispose();
    descriptionC.dispose();
    categoryC.dispose();
    imageC.dispose();
    rateC.dispose();
    countC.dispose();
    super.onClose();
  }

  void snackBarError(String msg) {
    Get.snackbar(
      "ERROR",
      msg,
      duration: const Duration(seconds: 2),
      colorText: Colors.red,
    );
  }

  void snackBarSuccess(String msg) {
    Get.snackbar(
      "SUCCESS",
      msg,
      duration: const Duration(seconds: 2),
      colorText: Colors.green,
    );
  }

  // void add(Product product) {
  //   if () {}
  // }
}
