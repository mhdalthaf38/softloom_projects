import 'dart:async';
import 'dart:ffi';
import 'dart:math';

import 'package:date_format/date_format.dart';
import 'package:dummy_app/animation/explicit/cardApp/secondScreen.dart';
import 'package:dummy_app/animation/explicit/cardApp/verticalflipwidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardHomePage extends StatefulWidget {
  const CardHomePage({super.key});

  @override
  State<CardHomePage> createState() => _CardHomePageState();
}

class _CardHomePageState extends State<CardHomePage>
    with TickerProviderStateMixin {
  List balance = [2323.23, 2344.23, 42433.38, 3466.52];
  List frontImages = [
    'assets/images/yellow-black-front-removebg-preview.png',
  ];
  late AnimationController _controller2;
  late AnimationController _controller;
  late Animation<int> _animation;
  late Animation<double> _rotateanimate;
  late Animation<double> _scaleanimation;
  late Animation<double> _fading;
  bool tap = false;

  num amount = 2323.23;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _controller2 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = IntTween(begin: 1000, end: 0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _fading = Tween<double>(begin: 1, end: 0).animate(_controller2);
    _rotateanimate = Tween<double>(begin: 0, end: 1.6).animate(_controller2);
    _controller2.addListener(() {
      setState(() {
        if (_controller2.isCompleted) {
          Navigator.of(context).push(Slidein(route: SecondClass()));
          Timer(Duration(milliseconds: 1000), () {
            _controller2.reset();
          });
        }
      });
    });

    _scaleanimation = Tween<double>(begin: 1, end: 0.4).animate(_controller2);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: FadeTransition(
          opacity: _fading,
          child: Icon(
            Icons.arrow_back_rounded,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeTransition(
            opacity: _fading,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: FittedBox(
                    child: Text(
                      'Bank Cards',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/profile-photo-1.jpg'),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: FadeTransition(
              opacity: _fading,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Balance',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text("\$${_animation.value + amount}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w900))
                ],
              ),
            ),
          ),
          Expanded(
            child: RotatedBox(
              quarterTurns: -1,
              child: ListWheelScrollView(
                onSelectedItemChanged: (index) {
                  return setState(() {
                    if (_controller.isCompleted) {
                      _controller.reverse();
                    } else {
                      _controller.forward();
                    }

                    amount = balance[index];
                  });
                },
                perspective: 0.001,
                physics: FixedExtentScrollPhysics(),
                itemExtent: 290,
                children: List.generate(4, (index) {
                  return GestureDetector(
                    onTap: () {
                      _controller2.forward();
                    },
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(_rotateanimate.value),
                      child: ScaleTransition(
                        scale: _scaleanimation,
                        child: Container(
                          width: 600,
                          height: 290,
                          child: Image.asset(
                            fit: BoxFit.contain,
                            frontImages[index % 1],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
