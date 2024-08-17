import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class sizecontainer extends StatefulWidget {
  const sizecontainer({super.key});

  @override
  State<sizecontainer> createState() => _sizecontainerState();
}

class _sizecontainerState extends State<sizecontainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          builder: (BuildContext, size, Widget) {
            return Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 254, 255),
                  borderRadius: BorderRadius.circular(3000),
                  boxShadow: [
                    BoxShadow(
                        color: const Color.fromARGB(255, 230, 164, 47),
                        spreadRadius: size,
                        blurRadius: size,
                        blurStyle: BlurStyle.normal)
                  ]),
            );
          },
          tween: Tween<double>(begin: 0, end: 200),
          duration: const Duration(milliseconds: 1000),
        ),
      ),
    );
  }
}
