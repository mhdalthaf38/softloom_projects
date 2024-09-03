import 'dart:math';

import 'package:flutter/material.dart';

class VerticalFlipCard extends StatefulWidget {
  String frontimage;
  String backimage;
  VerticalFlipCard(
      {super.key, required this.frontimage, required this.backimage});
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
        child: Image.asset(fit: BoxFit.cover, widget.frontimage));
  }

  Widget _buildBackCard() {
    return Container(
        width: 320,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 20)],
        ),
        child: Image.asset(fit: BoxFit.cover, widget.backimage));
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
