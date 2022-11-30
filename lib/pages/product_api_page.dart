import 'package:flutter/material.dart';
import 'package:geek_garden/controllers/product_api_controller.dart';
import 'package:geek_garden/routes/route_name.dart';
import 'package:geek_garden/theme.dart';
import 'package:geek_garden/widgets/product_tile.dart';
import 'package:get/get.dart';

class ProductApiPage extends GetView<ProductsApiController> {
  const ProductApiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget products() {
      return controller.obx(
        (state) => Container(
          margin: const EdgeInsets.only(top: 14),
          child: ListView.builder(
            padding: EdgeInsets.only(top: defaultMargin),
            itemCount: state!.length,
            itemBuilder: (context, index) {
              return ProductTile(
                title: state[index]['title'].toString(),
                price: state[index]['price'].toString(),
                description: state[index]['description'].toString(),
                category: state[index]['category'].toString(),
                image: state[index]['image'].toString(),
                rate: state[index]['rating']['rate'].toString(),
                page: 'product_api',
              );
            },
          ),
        ),
        onEmpty: Text(
          'Data',
          style: primaryTextStyle,
        ),
      );
    }

    AppBar appbar() {
      return AppBar(
        title: Text(
          'Products API',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semibold,
          ),
        ),
        backgroundColor: backgroundColor,
        centerTitle: true,
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
