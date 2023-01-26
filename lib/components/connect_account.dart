import 'package:flutter/material.dart';

class ConnectEmail extends StatelessWidget {
  ConnectEmail(this.image, this.title);
  String image;
  String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15),
          child: Container(
            width: 370,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: const [0.1, 0.2],
                  colors: [Colors.purpleAccent.withOpacity(0.2), Colors.white.withOpacity(.1)]),
              border: Border.all(color: Colors.grey, width: 1.0),
              borderRadius: const BorderRadius.all(Radius.circular(25.0) //                 <--- border radius here
                  ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 30, width: 30, child: Image.asset(image)),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
