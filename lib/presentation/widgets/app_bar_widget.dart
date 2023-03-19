import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Downloads'),
        Icon(Icons.cast),
        Container(
          width: 40,
          height: 40,
          color: Colors.blue,
        )
      ],
    );
  }
}
