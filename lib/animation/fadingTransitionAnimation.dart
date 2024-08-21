import 'package:flutter/material.dart';

class Fadingtransitionanimation extends StatefulWidget {
  const Fadingtransitionanimation({super.key});

  @override
  State<Fadingtransitionanimation> createState() =>
      _FadingtransitionanimationState();
}

class _FadingtransitionanimationState extends State<Fadingtransitionanimation> {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _first = !_first;
            });
          },
          child: Container(
            child: AnimatedCrossFade(
              duration: Duration(seconds: 1),
              crossFadeState:
                  _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              firstChild: Container(
                  width: 100,
                  height: 50,
                  color: Colors.cyan,
                  child: Center(child: Text('first'))),
              secondChild: Container(
                  width: 50,
                  height: 25,
                  color: Colors.cyan,
                  child: Center(child: Text('second'))),
            ),
          ),
        ),
      ),
    );
  }
}
