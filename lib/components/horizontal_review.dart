import 'package:flutter/material.dart';
import 'package:hw_11/components/review_card.dart';

class HorizantalReview extends StatelessWidget {
  const HorizantalReview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: const [
        ReviewCard(),
        SizedBox(
          width: 8,
        ),
        ReviewCard(),
        SizedBox(
          width: 8,
        ),
        ReviewCard()
      ]),
    );
  }
}
