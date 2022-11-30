import 'package:flutter/material.dart';
import 'package:geek_garden/controllers/add_controller.dart';
import 'package:geek_garden/models/product_model.dart';
import 'package:get/get.dart';

import '../controllers/product_controllers.dart';
import '../theme.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productC = Get.find<ProductController>();
    final addC = Get.find<AddController>();

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          'Form Input Product',
          style: primaryTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: backgroundColor,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(defaultMargin),
        children: [
          TextField(
            controller: addC.titleC,
            style: primaryTextStyle,
            decoration: InputDecoration(
              hintText: 'Please Input Title Product',
              hintStyle: secondaryTextStyle,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.white,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: addC.priceC,
            style: primaryTextStyle,
            decoration: InputDecoration(
              hintText: 'Please Input Price Product',
              hintStyle: secondaryTextStyle,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.white,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: addC.descriptionC,
            style: primaryTextStyle,
            decoration: InputDecoration(
              hintText: 'Please Input Description Product',
              hintStyle: secondaryTextStyle,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.white,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: addC.categoryC,
            style: primaryTextStyle,
            decoration: InputDecoration(
              hintText: 'Please Input Cetegory Product',
              hintStyle: secondaryTextStyle,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.white,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: addC.rateC,
            style: primaryTextStyle,
            decoration: InputDecoration(
              hintText: 'Please Input Rate Product',
              hintStyle: secondaryTextStyle,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.white,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              productC.add(
                Product(
                  id: DateTime.now().toString(),
                  title: addC.titleC.text.toString(),
                  description: addC.descriptionC.text.toString(),
                  category: addC.categoryC.text.toString(),
                  image: 'assets/image_shoes.png',
                  price: addC.priceC.text.toString(),
                  rate: addC.rateC.text.toString(),
                ),
              );
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
