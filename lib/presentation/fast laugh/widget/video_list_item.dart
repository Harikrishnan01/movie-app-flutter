import 'package:flutter/material.dart';
import 'package:movieproj/Core/constants.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          color: Colors.accents[index],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //left side
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 20),
                child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black,
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.volume_mute))),
              ),
              //right side
              Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(),
                  kheight,
                  ActionIcon(
                    icon: Icons.emoji_emotions,
                    title: 'LOL',
                  ),
                  kheight,
                  ActionIcon(
                    icon: Icons.add,
                    title: 'My List ',
                  ),
                  kheight,
                  ActionIcon(
                    icon: Icons.share,
                    title: 'Share ',
                  ),
                  kheight,
                  ActionIcon(
                    icon: Icons.play_arrow,
                    title: 'My List',
                  ),
                  kheight,

                  // CircleAvatar(
                  //   radius: 30,
                  // ),
                  // CircleAvatar(
                  //   radius: 30,
                  // ),
                  // CircleAvatar(
                  //   radius: 30,
                  // ),
                  // CircleAvatar(
                  //   radius: 30,
                  // ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class ActionIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  //final Color color;
  const ActionIcon({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
        Text(title),
        //Colors(color),
      ],
    );
  }
}
