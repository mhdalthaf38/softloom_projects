import 'package:dummy_app/bottomnavbar.dart';
import 'package:dummy_app/carousel.dart';
import 'package:dummy_app/datepicker.dart';
import 'package:dummy_app/drawe.dart';
import 'package:dummy_app/drawer2.dart';
import 'package:dummy_app/dropdownmenu.dart';
import 'package:dummy_app/filepicker.dart';
import 'package:dummy_app/grid.dart';
import 'package:dummy_app/homepage.dart';
import 'package:dummy_app/instagram.dart';
import 'package:dummy_app/listView.dart';
import 'package:dummy_app/login.dart';
import 'package:dummy_app/animation.dart';
import 'package:dummy_app/multifilePicker.dart';
import 'package:dummy_app/navigationbar.dart';
import 'package:dummy_app/popupmenubutton.dart';
import 'package:dummy_app/profilepage.dart';
import 'package:dummy_app/stack.dart';
import 'package:dummy_app/whatsappChat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dropdownmenu(),
    );
  }
}
