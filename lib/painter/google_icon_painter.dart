import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:playing_with_canvas/utils/utils.dart';

class GoogleIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final centerPoint = Offset(size.width / 2, size.height / 2);
    final radius = 100.0;
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 40
      ..color = Colors.red;

    final pathBorder = Path()
      ..moveTo(centerPoint.dx, centerPoint.dx)
      ..relativeLineTo(radius, 0)
      ..arcTo(Rect.fromCircle(center: centerPoint, radius: radius), 0,
          Utils.degreeToRadian(320), false);

    canvas.drawPath(pathBorder, paint..strokeWidth = 50);

    final path = Path()
      ..moveTo(centerPoint.dx, centerPoint.dy)
      ..relativeLineTo(radius, 0)
      ..arcTo(Rect.fromCircle(center: centerPoint, radius: radius), 0,
          Utils.degreeToRadian(320), false);

    final pathMertic = path.computeMetrics().first;
    final numberPart = 4;
    final eachPartLength = pathMertic.length / numberPart;

    for (var i = 1; i <= numberPart; i++) {
      canvas.drawPath(
          pathMertic.extractPath(eachPartLength * (i - 1), eachPartLength * i),
          paint
            ..color = Utils.radomColor()
            ..strokeWidth = 45);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
