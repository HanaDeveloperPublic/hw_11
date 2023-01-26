import 'package:flutter/material.dart';

class VerticalCategory extends StatelessWidget {
  const VerticalCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Stack(alignment: Alignment.center, children: const [
            Placeholder(
              fallbackHeight: 200,
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Text("12"),
            )
          ]),
          const SizedBox(
            height: 12,
          ),
          Stack(alignment: Alignment.center, children: const [
            Placeholder(
              fallbackHeight: 200,
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Text("12"),
            )
          ]),
        ],
      ),
    );
  }
}
