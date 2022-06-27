import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  @override
  final String avaterImage;
  final String storyImage;
  final String userName;

  Story({
    required this.avaterImage,
    required this.storyImage,
    required this.userName,
  });

  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(storyImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 22,
              child: CircleAvatar(
                backgroundImage: AssetImage(avaterImage),
                radius: 20,
              ),
            ),
            Spacer(),
            Text(
              userName,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
