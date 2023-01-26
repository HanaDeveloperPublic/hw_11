import 'package:flutter/material.dart';
import 'package:hw_11/components/feature_card.dart';

class VerticalFeatureCard extends StatelessWidget {
  const VerticalFeatureCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        children: const [
          FeatureCard(),
          SizedBox(
            height: 16,
          ),
          FeatureCard(),
          SizedBox(
            height: 16,
          ),
          FeatureCard(),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
