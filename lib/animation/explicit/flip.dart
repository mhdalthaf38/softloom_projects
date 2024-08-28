import 'package:flutter/material.dart';

class FlippableCard extends StatefulWidget {
  const FlippableCard({super.key});

  @override
  State<FlippableCard> createState() => _FlippableCardState();
}

class _FlippableCardState extends State<FlippableCard>
    with SingleTickerProviderStateMixin {
  bool _isFront = true;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _controller.addListener(() {
      setState(() {});
    });

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    final rotateY = _animation.value * 3.141;

    return Scaffold(
      appBar: AppBar(
        title: Text("Flippable Card"),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (_controller.isCompleted) {
              _controller.reverse();
            } else {
              _controller.forward();
            }
            setState(() {
              _isFront = !_isFront;
            });
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, .001)
                    ..rotateY(rotateY),
                  alignment: Alignment.center,
                  child: _animation.value < .5
                      ? Container(
                          width: 200,
                          height: 200,
                          color: Colors.blue,
                          child: Center(
                            child: Icon(
                              Icons.two_wheeler,
                              color: Colors.black,
                            ),
                          ),
                        )
                      : SizedBox.shrink()),
              Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, .001)
                    ..rotateY(rotateY),
                  alignment: Alignment.center,
                  child: _animation.value >= .5
                      ? Container(
                          width: 200,
                          height: 200,
                          color: Colors.red,
                          child: Center(
                            child: Icon(
                              Icons.fire_truck,
                              color: Colors.black,
                            ),
                          ),
                        )
                      : SizedBox.shrink()),
            ],
          ),
        ),
      ),
    );
  }
}
