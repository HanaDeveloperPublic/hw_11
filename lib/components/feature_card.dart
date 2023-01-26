import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        children: const [
          Placeholder(
            fallbackHeight: 50,
            fallbackWidth: 50,
          ),
          Text("data"),
          Text("data"),
        ],
      ),
    );
  }
}
