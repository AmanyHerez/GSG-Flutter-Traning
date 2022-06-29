import 'package:flutter/material.dart';

import '../User.dart';
import '../post.dart';

class Story extends StatelessWidget {
  @override
  User? user;
  PostData? post;

  Story({
    required this.user,
    required this.post,
  });
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(post!.image??' '),
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
                backgroundImage: NetworkImage(post!.image??' '),
                radius: 20,
              ),
            ),
            Spacer(),
            Text(
              user!.name??' ',
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
