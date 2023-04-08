import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

class NumberCard extends StatelessWidget {
  NumberCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage('asset/images/cinema2.jpeg'))),
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: -20,
          child: BorderedText(
            strokeWidth: 10.0,
            strokeColor: Colors.white,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 100,
                decoration: TextDecoration.none,
                decorationColor: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
