import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InstagramScreen extends StatelessWidget {
  const InstagramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
            color: Colors.black,
            fontFamily: "VeganStylePersonalUse",
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Row(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'),
                  radius: 30.0,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Amany.Herez",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.verified,
                  color: Colors.blue,
                ),
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ),
          ),
          Image.asset('assets/images/Jerusalem.jpg'),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/love.png',
                  width: 30,
                ),
                Image.asset(
                  'assets/icons/chat.png',
                  width: 30,
                ),
                Image.asset(
                  'assets/icons/send.png',
                  width: 30,
                ),
                const Spacer(),
                Image.asset(
                  'assets/icons/save.png',
                  width: 35,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
