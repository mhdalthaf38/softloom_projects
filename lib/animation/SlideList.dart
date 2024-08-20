import 'package:flutter/material.dart';

class Slidelist extends StatefulWidget {
  const Slidelist({super.key});

  @override
  State<Slidelist> createState() => _SlidelistState();
}

class _SlidelistState extends State<Slidelist>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late List<Animation<Offset>> slidin;
  bool is_animated = true;
  List names = ['althaf', 'seydali', 'akshay', 'aditya', 'meenakshi', 'ajmal'];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    slidin = List.generate(names.length, (index) {
      final Startinterval = index * 0.1;
      final endInterval = Startinterval + 0.4;
      return Tween(begin: const Offset(-1, 0), end: Offset.zero).animate(
          CurvedAnimation(
              parent: controller,
              curve: Interval(Startinterval, endInterval,
                  curve: Curves.easeInOut)));
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return SlideTransition(
              position: slidin[index],
              child: ListTile(
                leading: Text("hello ${names[index]} $index"),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.list_rounded),
          onPressed: () {
            setState(() {
              is_animated = !is_animated;
            });
            if (is_animated == false) {
              controller.reverse();
            } else {
              controller.forward();
            }
          }),
    );
  }
}
