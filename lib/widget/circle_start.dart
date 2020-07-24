import 'package:flutter/material.dart';
import 'package:playing_with_canvas/painter/circle_star_painter.dart';

class CirlceStar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        child: CustomPaint(
          size: Size.infinite,
          painter: CircleStartPainter(),
        ),
      ),
    );
  }
}
