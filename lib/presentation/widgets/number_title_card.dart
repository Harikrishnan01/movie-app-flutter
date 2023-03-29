import 'package:flutter/material.dart';
import 'package:movieproj/presentation/widgets/main_page_widget.dart';
import 'package:movieproj/presentation/widgets/number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: "Top 10 Shows in India",
        ),
        const SizedBox(
          height: 20,
        ),
        LimitedBox(
            maxHeight: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return NumberCard(
                  index: index,
                );
              },
              itemCount: 10,
            ))
      ],
    );
  }
}
