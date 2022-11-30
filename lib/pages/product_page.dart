import 'package:flutter/material.dart';
import 'package:geek_garden/controllers/product_controllers.dart';
import 'package:geek_garden/theme.dart';
import 'package:geek_garden/widgets/product_tile.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productC = Get.find<ProductController>();

    Widget productTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          bottom: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Products',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget products() {
      return Obx(
        () => Container(
          margin: const EdgeInsets.only(top: 14),
          child: productC.products.isEmpty
              ? const Center(
                  child: Text(
                    "Belum ada data",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: productC.products.length,
                  itemBuilder: (context, index) {
                    return ProductTile(
                      title: productC.products[index].title,
                      price: productC.products[index].price,
                      description: productC.products[index].description,
                      category: productC.products[index].category,
                      image: productC.products[index].image,
                      rate: productC.products[index].rate,
                      count: productC.products[index].count,
                    );
                  },
                ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          productTitle(),
          Expanded(
            child: products(),
          ),
        ],
      ),
      floatingActionButton: FormInput(),
    );
  }
}

class FormInput extends StatelessWidget {
  const FormInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Get.bottomSheet(
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              color: backgroundColor,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Center(
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                        'Form Input Product',
                        style: primaryTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      style: primaryTextStyle,
                      decoration: InputDecoration(
                        hintText: 'Please Input Name Product',
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
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: const Icon(
        Icons.add,
      ),
    );
  }
}
