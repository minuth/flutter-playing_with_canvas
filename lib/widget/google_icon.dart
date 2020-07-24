import 'package:flutter/material.dart';
import 'package:playing_with_canvas/painter/google_icon_painter.dart';

class GoogleIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        child: CustomPaint(
          size: Size.infinite,
          painter: GoogleIconPainter(),
        ),
      ),
    );
  }
}
