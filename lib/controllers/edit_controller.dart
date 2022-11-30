import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditController extends GetxController {
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
  }

  @override
  void onClose() {
    super.onClose();
    titleC.dispose();
    priceC.dispose();
    descriptionC.dispose();
    categoryC.dispose();
    imageC.dispose();
    rateC.dispose();
  }
}
