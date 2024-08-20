import 'package:flutter/material.dart';

class TweenandcontrollerAnimation extends StatefulWidget {
  const TweenandcontrollerAnimation({super.key});

  @override
  State<TweenandcontrollerAnimation> createState() =>
      _TweenandcontrollerAnimationState();
}

class _TweenandcontrollerAnimationState
    extends State<TweenandcontrollerAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<double>(begin: 50, end: 200)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn))
      ..addListener(() {
        setState(() {});
      });
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: _animation.value,
        height: _animation.value,
        color: Colors.amberAccent,
      ),
    );
  }
}
