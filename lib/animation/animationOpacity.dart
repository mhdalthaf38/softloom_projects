import 'package:flutter/material.dart';

class Opacityanimation extends StatefulWidget {
  const Opacityanimation({super.key});

  @override
  State<Opacityanimation> createState() => _OpacityanimationState();
}

class _OpacityanimationState extends State<Opacityanimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacity;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    opacity = Tween<double>(begin: 0, end: 1).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        duration: Duration(milliseconds: 1000),
        opacity: opacity.value,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.green,
        ),
      ),
    );
  }
}
