import 'package:flutter/material.dart';
import 'package:udemy_flutter/home_screen.dart';
import 'package:udemy_flutter/login_screen.dart';
import 'package:udemy_flutter/messenger_screen.dart';
import 'package:udemy_flutter/Users_Screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UsersScreen() ,
    );
  }
  }




