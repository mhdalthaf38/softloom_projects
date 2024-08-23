import 'package:flutter/material.dart';

class TweenColor extends StatefulWidget {
  const TweenColor({super.key});

  @override
  State<TweenColor> createState() => _TweenColorState();
}

class _TweenColorState extends State<TweenColor>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    colorAnimation = ColorTween(begin: Colors.amber, end: Colors.green)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn))
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: AnimatedContainer(
        duration: Duration(seconds: 2),
        width: 100,
        height: 100,
        color: colorAnimation.value,
      ),
    );
  }
}
