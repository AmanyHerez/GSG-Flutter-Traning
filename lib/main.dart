import 'package:first_gsg_app/sec_facebook_screen.dart';
import 'package:flutter/material.dart';

import 'MyFirstUi.dart';
import 'facebook_screen.dart';
import 'instagram_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home:FacebookUI(),
    );
  }
}


