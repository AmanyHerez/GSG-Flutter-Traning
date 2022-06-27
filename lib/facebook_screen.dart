import 'package:first_gsg_app/widget/stories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
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
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Story(
                      avaterImage: "assets/images/plus.png",
                      storyImage: "assets/images/story1.png",
                      userName: "Add your Story",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Story(
                      avaterImage: "assets/images/profile2.png",
                      storyImage: "assets/images/story2.png",
                      userName: "Ahmed Herez",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Story(
                      avaterImage: "assets/images/profile3.png",
                      storyImage: "assets/images/stoty3.jpg",
                      userName: "Mousa Herez",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Story(
                      avaterImage: "assets/images/profile4.png",
                      storyImage: "assets/images/story4.png",
                      userName: "Haia Herez",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                    radius: 20.0,
                  ),
                  SizedBox(width: 5),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Amany Herez  ',
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
                  child: Image.asset(
                    'assets/images/stoty3.jpg',
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
              SizedBox(
                height: 10,
              ),
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
      ),
    );
  }
}
