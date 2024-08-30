import 'dart:async';
import 'dart:ffi';
import 'dart:math';

import 'package:date_format/date_format.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardHomePage extends StatefulWidget {
  const CardHomePage({super.key});

  @override
  State<CardHomePage> createState() => _CardHomePageState();
}

class _CardHomePageState extends State<CardHomePage>
    with TickerProviderStateMixin {
  List balance = [2323.23, 2344.23, 42433.38, 3466.52];
  List frontImages = [
    'assets/images/yellow-black-front-removebg-preview.png',
  ];
  late AnimationController _controller2;
  late AnimationController _controller;
  late Animation<int> _animation;
  late Animation<double> _rotateanimate;
  late Animation<double> _scaleanimation;
  late Animation<double> _fading;
  bool tap = false;

  num amount = 2323.23;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _controller2 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = IntTween(begin: 1000, end: 0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _fading = Tween<double>(begin: 1, end: 0).animate(_controller2);
    _rotateanimate = Tween<double>(begin: 0, end: 1.6).animate(_controller2);
    _controller2.addListener(() {
      setState(() {
        if (_controller2.isCompleted) {
          Navigator.of(context).push(Slidein(route: SecondClass()));
          Timer(Duration(milliseconds: 1000), () {
            _controller2.reset();
          });
        }
      });
    });

    _scaleanimation = Tween<double>(begin: 1, end: 0.4).animate(_controller2);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: FadeTransition(
          opacity: _fading,
          child: Icon(
            Icons.arrow_back_rounded,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeTransition(
            opacity: _fading,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: FittedBox(
                    child: Text(
                      'Bank Cards',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/profile-photo-1.jpg'),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: FadeTransition(
              opacity: _fading,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Balance',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text("\$${_animation.value + amount}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w900))
                ],
              ),
            ),
          ),
          Expanded(
            child: RotatedBox(
              quarterTurns: -1,
              child: ListWheelScrollView(
                onSelectedItemChanged: (index) {
                  return setState(() {
                    if (_controller.isCompleted) {
                      _controller.reverse();
                    } else {
                      _controller.forward();
                    }

                    amount = balance[index];
                  });
                },
                perspective: 0.001,
                physics: FixedExtentScrollPhysics(),
                itemExtent: _controller2.isAnimating ? 310 : 290,
                children: List.generate(4, (index) {
                  return GestureDetector(
                    onTap: () {
                      _controller2.forward();
                    },
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(_rotateanimate.value),
                      child: ScaleTransition(
                        scale: _scaleanimation,
                        child: Container(
                          width: 600,
                          height: 290,
                          child: Image.asset(
                            fit: BoxFit.contain,
                            frontImages[index % 1],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SecondClass extends StatefulWidget {
  const SecondClass({super.key});

  @override
  State<SecondClass> createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fading;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _fading = Tween<double>(begin: 0, end: 1).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: FadeTransition(
            opacity: _fading,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: FadeTransition(
                  opacity: _fading,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Full Card',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Text(
                        'check your card payment details',
                        style: TextStyle(
                            letterSpacing: 2,
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 100,
                ),
                child: Center(child: VerticalFlipCard()),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: FadeTransition(
                  opacity: _fading,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 31, 31, 30),
                        borderRadius: BorderRadius.circular(20)),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 20, bottom: 10),
                            child: Text(
                              'Today',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          ListView.separated(
                              separatorBuilder: (context, index) {
                                return Divider(
                                  thickness: 0.2,
                                );
                              },
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListTile(
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Apple Music',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Paid',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    trailing: Text(
                                      '\$7776.00',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    leading: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/images/alphaprofile.png'),
                                    ),
                                  ),
                                );
                              })
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class VerticalFlipCard extends StatefulWidget {
  @override
  _VerticalFlipCardState createState() => _VerticalFlipCardState();
}

class _VerticalFlipCardState extends State<VerticalFlipCard> {
  double _dragStart = 0.0;
  double _currentAngle = 0.0;

  void _onDragStart(DragStartDetails details) {
    _dragStart = details.localPosition.dy;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    setState(() {
      double dragDelta = (details.localPosition.dy - _dragStart) / 300;
      _currentAngle += dragDelta * pi; // Update the current angle based on drag
      _dragStart = details.localPosition.dy; // Reset the drag start position
    });
  }

  @override
  Widget build(BuildContext context) {
    double angle =
        _currentAngle % (2 * pi); // Normalize angle to a range of 0 to 2π

    return GestureDetector(
      onVerticalDragStart: _onDragStart,
      onVerticalDragUpdate: _onDragUpdate,
      child: Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateX(angle),
        alignment: Alignment.center,
        child: angle < pi / 2 || angle > 3 * pi / 2
            ? _buildFrontCard() // Show front side
            : Transform(
                transform: Matrix4.identity()..rotateX(pi),
                alignment: Alignment.center,
                child: _buildBackCard(), // Show back side
              ),
      ),
    );
  }

  Widget _buildFrontCard() {
    return Container(
        width: 310,
        height: 190,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 20)],
        ),
        child: Image.asset(
            fit: BoxFit.cover,
            'assets/images/yellow-black-front-removebg-preview.png'));
  }

  Widget _buildBackCard() {
    return Container(
        width: 320,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 20)],
        ),
        child: Image.asset(
            fit: BoxFit.cover,
            'assets/images/yellow-black-back-removebg-preview.png'));
  }
}

class Slidein extends PageRouteBuilder {
  final Widget route;
  Slidein({required this.route})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) {
            return route;
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final fadetween = Tween<double>(begin: 0, end: 1).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeInOut));
            final Tweens = Tween<Offset>(begin: Offset(0, 1), end: Offset.zero)
                .animate(animation);
            return SlideTransition(
              position: Tweens,
              child: FadeTransition(
                opacity: fadetween,
                child: child,
              ),
            );
          },
        );
}
