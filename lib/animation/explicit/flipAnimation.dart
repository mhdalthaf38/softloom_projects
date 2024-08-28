import 'dart:math';

import 'package:flutter/material.dart';

class Flipanimation extends StatefulWidget {
  const Flipanimation({super.key});

  @override
  State<Flipanimation> createState() => _FlipanimationState();
}

class _FlipanimationState extends State<Flipanimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool rotate = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _animation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rotateY = _animation.value * 3.141;
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (_controller.isCompleted) {
              _controller.reverse();
            } else {
              _controller.forward();
            }
            setState(() {
              rotate = !rotate;
            });
          },
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, .001)
                      ..rotateY(rotateY),
                    alignment: Alignment.center,
                    child: _animation.value < .5
                        ? Container(
                            width: 200,
                            height: 200,
                            color: Color.fromARGB(255, 226, 186, 6),
                            child: Center(
                              child: Icon(
                                Icons.dangerous,
                                color: Colors.black,
                              ),
                            ),
                          )
                        : SizedBox.shrink()),
                Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, .001)
                      ..rotateY(rotateY),
                    alignment: Alignment.center,
                    child: _animation.value >= .5
                        ? Container(
                            width: 200,
                            height: 200,
                            color: Color.fromARGB(255, 7, 152, 19),
                            child: Center(
                              child: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                            ),
                          )
                        : SizedBox.shrink()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
