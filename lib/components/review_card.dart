import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      const Text("Hana "),
      const SizedBox(
        height: 12,
      ),
      Row(children: [
        Flexible(
            child: Card(
                child: Column(children: const [
          Text("Hana "),
          SizedBox(
            width: 8,
          ),
          Placeholder(
            fallbackHeight: 20,
          ),
          Placeholder(
            fallbackHeight: 20,
          )
        ])))
      ])
    ]));
  }
}
