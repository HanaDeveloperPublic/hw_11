import 'package:flutter/material.dart';
import 'package:hw_11/models/product_model.dart';

class productCard extends StatelessWidget {
  const productCard({
    Product? product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 200,
      color: Colors.orange,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.network(
          "https://cdn.salla.sa/Aedxd/3I3yAXl78UqphrGn4OZYdTTMb4l0mO8kM4tRcwl2.jpg",
          height: 220,
          width: 200,
          fit: BoxFit.cover,
        ),
        Column(
          children: const [
            Text("name"),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [Text("price"), Icon(Icons.shopping_bag_outlined)],
        )
      ]),
    );
  }
}
