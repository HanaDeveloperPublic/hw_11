import 'package:flutter/material.dart';
import 'package:hw_11/components/product_card.dart';

class HorizontalProduct extends StatelessWidget {
  const HorizontalProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          productCard(),
          SizedBox(
            width: 16,
          ),
          productCard(),
          SizedBox(
            width: 16,
          ),
          productCard(),
        ],
      ),
    );
  }
}
