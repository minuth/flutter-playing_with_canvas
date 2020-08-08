import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:playing_with_canvas/utils/utils.dart';

class ComplexShapePainter extends CustomPainter {
  final Offset _clickedPosition;
  final icons = [Icons.dashboard,Icons.ac_unit, Icons.access_alarms, Icons.accessibility_new, Icons.accessible, Icons.account_balance, Icons.add_shopping_cart];
  ComplexShapePainter(this._clickedPosition);
  @override
  void paint(Canvas canvas, Size size) {
    final centerPoint = Offset(size.width / 2, size.height / 2);
    final radius = 30.0;
    final n = 6;
    final eachDegree = 360 / n;
    _drawItem(centerPoint, radius, canvas, 0);
    for (var i = 0; i < n; i++) {
      final radian = Utils.degreeToRadian((i * eachDegree) + 270);
      final drawPoint =
          Offset(cos(radian) * (radius * 2), sin(radian) * (radius * 2)) +
              centerPoint;
      _drawItem(drawPoint, radius, canvas, i+1);
    }
  }

  void _drawItem(Offset drawPoint, double radius, Canvas canvas, int index) {
    final paint = Paint()..color = Utils.radomColor();
    final path = Path();
    final n = 6;
    final eachDegree = 360 / n;
    for (var i = 0; i < n; i++) {
      final radian = Utils.degreeToRadian(i * eachDegree);
      final newDrawPoint =
          Offset(cos(radian) * radius, sin(radian) * radius) + drawPoint;
      if (i == 0) {
        path.moveTo(newDrawPoint.dx, newDrawPoint.dy);
      } else {
        path.lineTo(newDrawPoint.dx, newDrawPoint.dy);
      }
    }
    path.close();
    if (path.contains(_clickedPosition)) {
      canvas.drawPath(path, paint..style = PaintingStyle.fill);
      Utils.drawIcon(canvas, icons[index], drawPoint - Offset(15, 15), color: Colors.white);
    } else {
      canvas.drawPath(path, paint..style = PaintingStyle.stroke);
      Utils.drawIcon(canvas, icons[index], drawPoint - Offset(15, 15), color: Colors.black);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
