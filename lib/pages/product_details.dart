import 'package:flutter/material.dart';
import 'package:hw_11/models/product_model.dart';
import 'package:hw_11/pages/cart.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.pro});

  final Product pro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "Product Details",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              width: 100,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cart()),
                  );
                },
                child: const Icon(Icons.shopping_cart)),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Container(
              child: Stack(
                children: <Widget>[
                  Image.network(
                    pro.image,
                  ), //This

                  Positioned(
                    bottom: 0,
                    right: 20,
                    child: FloatingActionButton(
                        elevation: 2,
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                pro.name,
                textAlign: TextAlign.left,
                style: const TextStyle(color: Color(0xff00AEEF), fontWeight: FontWeight.w600, fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  pro.price.toString(),
                  textAlign: TextAlign.left,
                  style: const TextStyle(color: Color(0xffFF7A45), fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                  child: Text(
                    "choose number of item",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(color: Color(0xffF4CAD3), shape: BoxShape.circle),
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "1",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(color: Color(0xffF4CAD3), shape: BoxShape.circle),
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.all(10),
                  child:
                      const Text("2", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
                Container(
                  decoration: const BoxDecoration(color: Color(0xffF4CAD3), shape: BoxShape.circle),
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.all(10),
                  child:
                      const Text("3", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
                Container(
                    decoration: const BoxDecoration(color: Color(0xffF4CAD3), shape: BoxShape.circle),
                    width: 30,
                    height: 30,
                    margin: const EdgeInsets.all(10),
                    child: const Text("4",
                        textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 24))),
              ],
            )
          ])),
    );
  }
}
