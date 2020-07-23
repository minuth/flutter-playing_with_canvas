import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:playing_with_canvas/utils/utils.dart';

class CircleTravellPainter extends CustomPainter {
  final int rotateDegree;

  final _paintRed = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 5
    ..color = Colors.red;

  final _radius = 80.0;
  final _childRadius = 80 / 2;

  CircleTravellPainter({this.rotateDegree});

  @override
  void paint(Canvas canvas, Size size) {
    final centerPoint = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(centerPoint, _radius, _paintRed);
    final circleItemNumber = 4;
    for (var i = 0; i < circleItemNumber; i++) {
      final radian =
          Utils.degreeToRadian((i * (360 / circleItemNumber)) + rotateDegree);
      final centerPointCircleItem = Offset(
              cos(radian) * (_radius + _childRadius),
              sin(radian) * (_radius + _childRadius)) +
          centerPoint;

      canvas.drawCircle(centerPointCircleItem, _childRadius, Paint()..color = Utils.radomColor());
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
