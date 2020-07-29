import 'package:flutter/widgets.dart';
import 'package:playing_with_canvas/utils/utils.dart';

class GalaxyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
    final centerPoint = Offset(size.width / 2, size.height / 2);
    var startRadius = 7.0;
    var startDegree = 0.0;

    for (var i = 0; i < 20; i++) {
      Offset additionalOffset = Offset(0, 0);
      if (i % 2 != 0) {
        additionalOffset +=
            Offset(7, 0); // change center position by increase X by 7
      }
      final rect = Rect.fromCircle(
          radius: startRadius, center: centerPoint + additionalOffset);
      canvas.drawArc(rect, Utils.degreeToRadian(startDegree),
          Utils.degreeToRadian(180), false, paint);
      startDegree += 180;
      startRadius += 7;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
