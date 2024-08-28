import 'dart:math';

import 'package:flutter/material.dart';

class Voiceanimation extends StatefulWidget {
  const Voiceanimation({super.key});

  @override
  State<Voiceanimation> createState() => _VoiceanimationState();
}

class _VoiceanimationState extends State<Voiceanimation>
    with SingleTickerProviderStateMixin {
  List colr = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];
  List<int> Durations = [900, 700, 800, 600, 500];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
          10,
          (index) => VisualComponent(
                decoraion: Durations[index % 5],
                color: colr[index % 4],
              )),
    );
  }
}

class VisualComponent extends StatefulWidget {
  final int decoraion;
  final Color color;
  const VisualComponent(
      {super.key, required this.decoraion, required this.color});

  @override
  State<VisualComponent> createState() => _VisualComponentState();
}

class _VisualComponentState extends State<VisualComponent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: widget.decoraion));
    _animation = Tween<double>(begin: 0, end: 100)
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
    return Center(
      child: Container(
        width: 10,
        height: _animation.value,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23), color: widget.color),
      ),
    );
  }
}
