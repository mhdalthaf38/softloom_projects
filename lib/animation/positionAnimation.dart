import 'package:flutter/material.dart';

class PositionAnimation extends StatefulWidget {
  const PositionAnimation({super.key});

  @override
  State<PositionAnimation> createState() => _PositionAnimationState();
}

class _PositionAnimationState extends State<PositionAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(begin: 100, end: 200).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(seconds: 2),
      left: _animation.value,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    );
  }
}
