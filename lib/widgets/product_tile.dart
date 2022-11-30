import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geek_garden/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key? key,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rate,
    required this.page,
  }) : super(key: key);

  final String? title;
  final String? price;
  final String? description;
  final String? category;
  final String? image;
  final String? rate;
  final String? page;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
        border: Border.all(
          color: Colors.white,
        ),
      ),
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: defaultMargin,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: page == 'product'
                ? Image.file(
                    File(image.toString()),
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    image.toString(),
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.toString(),
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  title.toString(),
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  description.toString(),
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semibold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: EdgeInsets.only(right: defaultMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price.toString(),
                        style: priceTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            rate.toString(),
                            style: priceTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
