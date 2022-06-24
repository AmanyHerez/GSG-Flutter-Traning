import 'package:flutter/material.dart';

class MyFirstUi extends StatelessWidget {
  const MyFirstUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter App",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Amany Herez",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/Jerusalem.jpg',
                      width: 150,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "image 1",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/Jerusalem.jpg',
                      width: 150,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "image 2",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
