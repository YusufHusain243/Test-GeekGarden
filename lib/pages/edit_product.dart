import 'package:flutter/material.dart';
import 'package:geek_garden/controllers/edit_controller.dart';
import 'package:geek_garden/models/product_model.dart';
import 'package:get/get.dart';

import '../controllers/product_controllers.dart';
import '../theme.dart';

class EditProduct extends StatelessWidget {
  EditProduct({Key? key}) : super(key: key);

  final productC = Get.find<ProductController>();
  final editC = Get.find<EditController>();
  final String id = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final Product product = productC.productById(id);
    editC.titleC.text = product.title;
    editC.priceC.text = product.price.toString();
    editC.descriptionC.text = product.description;
    editC.categoryC.text = product.category;
    editC.rateC.text = product.rate;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          'Form Edit Product',
          style: primaryTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: backgroundColor,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              productC.delete(id);
            },
            icon: const Icon(
              Icons.delete,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(defaultMargin),
        children: [
          GetBuilder<ProductController>(
            id: 'image',
            builder: (_) {
              return TextField(
                readOnly: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: product.nameImage == productC.nameFile
                      ? product.nameImage
                      : productC.nameFile,
                  hintStyle: primaryTextStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  fillColor: const Color.fromARGB(255, 94, 94, 94),
                  filled: true,
                ),
                onTap: () {
                  productC.pickFile();
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: editC.titleC,
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
            controller: editC.priceC,
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
            controller: editC.descriptionC,
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
            controller: editC.categoryC,
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
            controller: editC.rateC,
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
              productC.edit(
                Product(
                  id: id,
                  title: editC.titleC.text.toString(),
                  description: editC.descriptionC.text.toString(),
                  category: editC.categoryC.text.toString(),
                  nameImage: productC.nameFile,
                  pathImage: productC.pathFile,
                  price: editC.priceC.text.toString(),
                  rate: editC.rateC.text.toString(),
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
