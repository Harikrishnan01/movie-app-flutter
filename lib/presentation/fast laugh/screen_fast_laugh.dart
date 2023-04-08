import 'package:flutter/material.dart';
import 'package:movieproj/presentation/fast%20laugh/widget/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [
            ListView.builder(
              //scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return VideoListItem(
                  index: index,
                );
              },
              itemCount: 10,
            )
          ],
        ),
      ),
    );
  }
}
