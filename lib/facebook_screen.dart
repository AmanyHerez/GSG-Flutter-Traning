import 'dart:math';
import 'package:first_gsg_app/widget/PostWidget.dart';
import 'package:first_gsg_app/widget/stories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/dumey.dart';

class FacebookUI extends StatefulWidget {
  const FacebookUI({Key? key}) : super(key: key);

  @override
  _FacebookUIState createState() => _FacebookUIState();
}

class _FacebookUIState extends State<FacebookUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 120,
                ),
                const Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  size: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'search',
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/icons/messenger.png',
                  width: 40,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Stories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Text("See Archive"),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 180,
              width: double.infinity,
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.blue.shade600,
                        ),
                      ),
                    );
                  }
                  return Story(
                      user: posts[index].user!, post: posts[index].post!);
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Post(user: posts[index].user!, post: posts[index].post!);
              },
            ),
            // ...posts.map((e) {
            //   return Post(user: e.user!, post: e.post!);
            // }).toList(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile4.png'),
                  radius: 20.0,
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Haia Fadel ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "update his cover photo",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "session at ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "Kigns lounge",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                FloatingActionButton(
                  onPressed: () {},
                  mini: true,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                  backgroundColor: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
