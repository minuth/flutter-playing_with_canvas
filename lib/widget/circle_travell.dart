import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:playing_with_canvas/painter/circle_travell_painter.dart';

class CircleTravell extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CircleTravellState();
}

class _CircleTravellState extends State<CircleTravell> {
  int _rotateDegree = 0;
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        if (_rotateDegree < 360) {
          _rotateDegree++;
        } else {
          _rotateDegree = 0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        child: CustomPaint(
          size: Size.infinite,
          painter: CircleTravellPainter(rotateDegree: _rotateDegree),
        ),
      ),
    );
  }
}
