import 'package:flutter/material.dart';
import 'package:flutter_application_2/profile_page.dart';
import 'package:flutter_application_2/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example users
    User brunoPham = User(
      username:'@ahmed.yehia',
      name: 'Ahmed Yehia',
      location: 'Cairo, Egypt',
      imagePath: 'images/alice.png',
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(user: brunoPham),
    );
  }
}
