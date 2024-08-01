import 'package:dummy_app/bottomnavbar.dart';
import 'package:dummy_app/drawe.dart';
import 'package:dummy_app/drawer2.dart';
import 'package:dummy_app/grid.dart';
import 'package:dummy_app/homepage.dart';
import 'package:dummy_app/instagram.dart';
import 'package:dummy_app/listView.dart';
import 'package:dummy_app/login.dart';
import 'package:dummy_app/animation.dart';
import 'package:dummy_app/navigationbar.dart';
import 'package:dummy_app/popupmenubutton.dart';
import 'package:dummy_app/profilepage.dart';
import 'package:dummy_app/stack.dart';
import 'package:dummy_app/whatsappChat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Popupmenubutton(),
    );
  }
}
