import 'package:flutter/material.dart';
import 'package:geek_garden/controllers/product_controllers.dart';
import 'package:geek_garden/routes/route_name.dart';
import 'package:geek_garden/theme.dart';
import 'package:geek_garden/widgets/product_tile.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productC = Get.find<ProductController>();

    Widget products() {
      return Obx(
        () => Container(
          margin: const EdgeInsets.only(top: 14),
          child: productC.products.isEmpty
              ? Center(
                  child: Text(
                    "Data's Empty",
                    style: primaryTextStyle,
                  ),
                )
              : ListView.builder(
                  padding: EdgeInsets.only(top: defaultMargin),
                  itemCount: productC.products.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          RouteName.editProduct,
                          arguments: productC.products[index].id,
                        );
                      },
                      child: ProductTile(
                        title: productC.products[index].title,
                        price: productC.products[index].price,
                        description: productC.products[index].description,
                        category: productC.products[index].category,
                        image: productC.products[index].pathImage,
                        rate: productC.products[index].rate,
                        page: 'product',
                      ),
                    );
                  },
                ),
        ),
      );
    }

    AppBar appbar() {
      return AppBar(
        title: Text(
          'Products',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semibold,
          ),
        ),
        backgroundColor: backgroundColor,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(RouteName.addProduct);
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      );
    }

    SafeArea drawer() {
      return SafeArea(
        child: Drawer(
          backgroundColor: backgroundColor,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                title: Text(
                  'Product',
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Get.back();
                  Get.toNamed(RouteName.product);
                },
              ),
              ListTile(
                title: Text(
                  'product Api',
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Get.back();
                  Get.toNamed(RouteName.productApi);
                },
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      drawer: drawer(),
      appBar: appbar(),
      body: products(),
    );
  }
}
