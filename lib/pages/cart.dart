import 'package:flutter/material.dart';

import '../models/product_model.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Cart",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (var product in Data.cart)
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 400,
                      width: 350,
                      decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Image(
                            image: NetworkImage(product.image),
                            height: 300,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              product.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20, color: Colors.black.withOpacity(.5)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  product.price,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
