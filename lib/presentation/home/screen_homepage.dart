import 'package:flutter/material.dart';
import 'package:movieproj/presentation/widgets/main_card.dart';
import 'package:movieproj/presentation/widgets/main_page_widget.dart';
import 'package:movieproj/presentation/widgets/main_title_card.dart';
import 'package:movieproj/presentation/widgets/number_card.dart';
import 'package:movieproj/presentation/widgets/number_title_card.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainTitleCard(
              title: "Released LAst Year",
            ),
            MainTitleCard(
              title: "Trending Now",
            ),
            NumberTitleCard(),
            MainTitleCard(
              title: "Tense Dramas",
            ),
            MainTitleCard(
              title: "South Indian Cinemas",
            ),
          ],
        ),
      ),
    );
  }
}
