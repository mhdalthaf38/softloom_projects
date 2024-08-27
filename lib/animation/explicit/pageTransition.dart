import 'dart:async';

import 'package:flutter/material.dart';

class PageTransition extends StatefulWidget {
  const PageTransition({super.key});

  @override
  State<PageTransition> createState() => _PageTransitionState();
}

class _PageTransitionState extends State<PageTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _animation = Tween<double>(begin: 1, end: 10).animate(_controller);
    _controller.addListener(() {
      if (_controller.isCompleted) {
        Navigator.of(context).push(Slidein(route: SecondClass()));

        Timer(Duration(milliseconds: 1000), () {
          _controller.reset();
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            _controller.forward();
          },
          child: ScaleTransition(
            scale: _animation,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: Colors.blue,
              ),
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}

class SecondClass extends StatelessWidget {
  const SecondClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('App bar'),
      ),
    );
  }
}

class Slidein extends PageRouteBuilder {
  final Widget route;
  Slidein({required this.route})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) {
            return route;
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final Tweens = Tween(begin: Offset(0, -1), end: Offset.zero)
                .animate(animation);
            return SlideTransition(
              position: Tweens,
              child: child,
            );
          },
        );
}
