import 'package:flutter/material.dart';
import 'package:geek_garden/controllers/product_controllers.dart';
import 'package:geek_garden/pages/product_page.dart';
import 'package:geek_garden/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final productC = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SafeArea(
        child: ProductPage(),
      ),
      getPages: AppPage.pages,
    );
  }
}
