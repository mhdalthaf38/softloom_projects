import 'package:flutter/material.dart';
import 'dart:math';

class maharatham extends StatefulWidget {
  const maharatham({super.key});

  @override
  _MaharathamState createState() => _MaharathamState();
}

class _MaharathamState extends State<maharatham> {
  List<Color> colors = List.generate(5, (index) => _generateRandomColor());

  static Color _generateRandomColor() {
    final random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: List.generate(5, (index) {
                return AnimatedContainer(
                  height: 100,
                  width: 100,
                  curve: Curves.easeIn,
                  duration: const Duration(milliseconds: 1000),
                  color: colors[index],
                  margin: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                );
              }),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                colors = List.generate(5, (index) => _generateRandomColor());
              });
            },
            child: const Text("Generate Colour Palette"),
          ),
        ],
      ),
    );
  }
}
