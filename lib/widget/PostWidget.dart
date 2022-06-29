import 'package:flutter/material.dart';

import '../User.dart';
import '../post.dart';

class Post extends StatelessWidget {
  @override
  User? user;
  PostData? post;

  Post({
    required this.user,
    required this.post,
  });

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(user!.image ?? ' '),
              radius: 20.0,
            ),
            SizedBox(width: 5),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                user!.name ?? "",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('3 mins ago'),
            ]),
            Text('update his cover photo'),
            Spacer(),
            Icon(Icons.more_horiz),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          width: double.infinity,
          height: 220,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              post!.image ?? '',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Image.asset(
              'assets/icons/like.png',
              width: 30,
            ),
            Image.asset(
              "assets/icons/seclove.jpg",
              width: 45,
            ),
            Text('400'),
            Spacer(),
            Text('120 comments'),
          ],
        ),
        Divider(
          thickness: 1,
          color: Colors.grey.shade300,
        ),
        Row(children: [
          Spacer(),
          Image.asset(
            'assets/icons/likee.png',
            width: 30,
          ),
          Text('Like'),
          Spacer(),
          Image.asset(
            'assets/icons/comment.png',
            width: 30,
          ),
          Text('Comment'),
          Spacer(),
        ]),
      ],
    );
  }
}
