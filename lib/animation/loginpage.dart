import 'package:flutter/material.dart';

class animatedLoginpage extends StatefulWidget {
  const animatedLoginpage({super.key});

  @override
  State<animatedLoginpage> createState() => _animatedLoginpageState();
}

class _animatedLoginpageState extends State<animatedLoginpage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> logofade;
  late Animation<Offset> slidIn;
  late Animation<double> scalein;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    logofade = Tween<double>(end: 1, begin: 0).animate(controller);
    slidIn = Tween(begin: const Offset(-1, -1), end: Offset.zero)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));
    scalein = Tween<double>(end: 1, begin: 0).animate(controller);
    controller.forward();
    logofade.addListener(() {
      if (logofade.isCompleted) {
        controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeTransition(
            opacity: logofade,
            child: const FlutterLogo(
              size: 90,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: SlideTransition(
              position: slidIn,
              child: ScaleTransition(
                scale: scalein,
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(hintText: 'username'),
                    ),
                    const TextField(
                      decoration: InputDecoration(hintText: 'username'),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Login')),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
