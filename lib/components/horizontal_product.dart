import 'package:flutter/material.dart';
import 'package:hw_11/components/product_card.dart';
import 'package:hw_11/models/product_model.dart';

class HorizontalProduct extends StatelessWidget {
  const HorizontalProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var product in Data.cart)
            productCard(
              pro: product,
            ),
          const SizedBox(
            width: 16,
          ),
          // productCard(pro: product),
          // const SizedBox(
          //   width: 16,
          // ),
          // productCard(
          //   pro: product,
          // ),
        ],
      ),
    );
  }
}
