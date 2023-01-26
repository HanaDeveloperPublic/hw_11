import 'package:flutter/material.dart';
import 'package:hw_11/models/product_model.dart';
import 'package:hw_11/pages/cart.dart';
import 'package:hw_11/pages/product_details.dart';

// product
class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Home",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24),
                ),
              ],
            ),
            centerTitle: true,
            backgroundColor: Colors.grey,
            actions: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Cart()),
                    );
                  },
                  child: const SizedBox(
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ))),
              const SizedBox(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.more_vert_outlined,
                    color: Colors.white,
                  )),
            ]),
        body: SafeArea(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              child: ListView(scrollDirection: Axis.horizontal, children: [
            for (var product in Data.products)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 200,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProductDetails(pro: product)),
                        );
                      },
                      child: Image.network(
                        product.image,
                        height: 220,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        Text(product.name),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(product.price),
                        InkWell(
                          onTap: () {
                            Data.cart.add(product);
                          },
                          child: const Icon(Icons.shopping_bag_outlined),
                        )
                      ],
                    ),
                  ]),
                ),
              ),
          ])
              // Padding(
              //   padding: const EdgeInsets.only(left: 20),
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => ProductDetails(pro: product)),
              //       );
              //     },
              //     child: Expanded(
              //       child: Container(
              //         decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(20)),
              //         child: Column(
              //           children: [
              //             Container(
              //               child: Stack(
              //                 children: <Widget>[
              //                   Image.network(
              //                     (product.image),
              //                     height: 300,
              //                   ),
              //                   Positioned(
              //                     bottom: 0,
              //                     right: 20,
              //                     child: FloatingActionButton(
              //                         elevation: 2,
              //                         backgroundColor: Colors.grey.withOpacity(0.2),
              //                         onPressed: () {
              //                           Data.cart.add(product);
              //                         },
              //                         child: const Icon(
              //                           Icons.shopping_cart,
              //                           color: Colors.white,
              //                         )),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.only(left: 15),
              //               child: Expanded(
              //                 child: Row(
              //                   children: [
              //                     Text(
              //                       product.name,
              //                       style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.only(left: 15),
              //               child: Row(
              //                 children: [
              //                   Text(
              //                     product.price,
              //                     style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

              ),
          Expanded(
            child: Container(
              height: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    for (var product in Data.products)
                      for (var product in Category.products)
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 300,
                              width: 350,
                              decoration:
                                  BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  Image(
                                    image: NetworkImage(product.image),
                                    height: 300,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                  ],
                ),
              ),
            ),
          )
        ])));
  }
}
