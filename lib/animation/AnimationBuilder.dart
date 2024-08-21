import 'package:flutter/material.dart';

class AnimationBuilder extends StatefulWidget {
  const AnimationBuilder({super.key});

  @override
  State<AnimationBuilder> createState() => _AnimationBuilderState();
}

class _AnimationBuilderState extends State<AnimationBuilder>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimationController Example')),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.scale(
              scale: _controller.value + 1,
              child: child,
            );
          },
          child: FlutterLogo(size: 100),
        ),
      ),
    );
  }
}
