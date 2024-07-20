import 'package:dummy_app/grid.dart';
import 'package:dummy_app/homepage.dart';
import 'package:dummy_app/listView.dart';
import 'package:dummy_app/login.dart';
import 'package:dummy_app/profilepage.dart';
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
      home: ListviewPage(),
    );
  }
}
