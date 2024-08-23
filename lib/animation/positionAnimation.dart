import 'dart:ffi';

import 'package:flutter/material.dart';

class PositionAnimation extends StatefulWidget {
  const PositionAnimation({super.key});

  @override
  State<PositionAnimation> createState() => _PositionAnimationState();
}

class _PositionAnimationState extends State<PositionAnimation>
    with SingleTickerProviderStateMixin {
  bool taped = true;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 100),
    );
    _animation = Tween<double>(begin: 100, end: 5).animate(_controller)
      ..addListener(() {
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
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            taped ? _controller.forward() : _controller.reverse();
            taped = !taped;
          });
        },
        child: Stack(
          children: [
            Container(
              width: 400,
              height: 300,
              color: const Color.fromARGB(255, 148, 185, 215),
              child: Center(
                  child: Text(
                "you fool",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
            ),
            Positioned(
              top: 150,
              left: 300,
              child: AnimatedContainer(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
                transform: Matrix4.identity()..rotateZ(taped ? 5 : 1),
                duration: Duration(milliseconds: 500),
                width: 90,
                height: 20,
              ),
            ),
            AnimatedPositioned(
              curve: Curves.bounceOut,
              duration: Duration(seconds: 1),
              left: 120,
              top: _animation.value,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 37, 56, 201),
                ),
                width: 150,
                height: 100,
                child: Center(
                    child: Text(
                  taped ? "Tap to see" : "you fool",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
