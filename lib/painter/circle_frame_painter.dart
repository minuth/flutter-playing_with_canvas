import 'dart:ui' as ui;
import 'package:flutter/widgets.dart';

class CirlceFramePainter extends CustomPainter {
  final ui.Image image;

  CirlceFramePainter(this.image);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawImage(image, Offset(0, 0), Paint());
  }

  @override
  bool shouldRepaint(CirlceFramePainter oldDelegate) {
    return true;
  }
}
