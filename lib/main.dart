import 'package:dummy_app/animation/AnimationBuilder.dart';
import 'package:dummy_app/animation/SlideList.dart';
import 'package:dummy_app/animation/animationOpacity.dart';
import 'package:dummy_app/animation/explicit/cardApp/homeCreditCard.dart';
import 'package:dummy_app/animation/explicit/flip.dart';
import 'package:dummy_app/animation/explicit/flipAnimation.dart';
import 'package:dummy_app/animation/explicit/pageTransition.dart';

import 'package:dummy_app/animation/explicit/voiceAnimation.dart';
import 'package:dummy_app/animation/fadingTransitionAnimation.dart';

import 'package:dummy_app/animation/loginpage.dart';
import 'package:dummy_app/animation/pallet.dart';
import 'package:dummy_app/animation/positionAnimation.dart';

import 'package:dummy_app/animation/sampleContainerAni.dart';
import 'package:dummy_app/animation/tweenAndController.dart';
import 'package:dummy_app/animation/tweencolor.dart';
import 'package:dummy_app/bottomnavbar.dart';
import 'package:dummy_app/carousel.dart';
import 'package:dummy_app/animation/cartbutton.dart';
import 'package:dummy_app/datepicker.dart';
import 'package:dummy_app/drawe.dart';
import 'package:dummy_app/drawer2.dart';
import 'package:dummy_app/dropdownmenu.dart';
import 'package:dummy_app/filepicker.dart';
import 'package:dummy_app/grid.dart';
import 'package:dummy_app/someskelton/homepage.dart';
import 'package:dummy_app/someskelton/instagram.dart';
import 'package:dummy_app/listView.dart';
import 'package:dummy_app/someskelton/login.dart';
import 'package:dummy_app/animation/animation.dart';
import 'package:dummy_app/multifilePicker.dart';
import 'package:dummy_app/navigationbar.dart';
import 'package:dummy_app/popupmenubutton.dart';
import 'package:dummy_app/someskelton/profilepage.dart';
import 'package:dummy_app/stack.dart';

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
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: CardHomePage(),
        ));
  }
}
