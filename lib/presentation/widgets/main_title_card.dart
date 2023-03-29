import 'package:flutter/material.dart';
import 'package:movieproj/presentation/widgets/main_card.dart';
import 'package:movieproj/presentation/widgets/main_page_widget.dart';

class MainTitleCard extends StatelessWidget {
  MainTitleCard({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        const SizedBox(
          height: 20,
        ),
        LimitedBox(
            maxHeight: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return MainCard();
              },
              itemCount: 10,
            ))
      ],
    );
  }
}
