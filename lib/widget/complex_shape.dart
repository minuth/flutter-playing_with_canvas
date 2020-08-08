import 'package:flutter/widgets.dart';
import 'package:playing_with_canvas/painter/complex_shape_painter.dart';

class ComplexShape extends StatefulWidget {
  @override
  _ComplexShapeState createState() => _ComplexShapeState();
}

class _ComplexShapeState extends State<ComplexShape> {
  Offset _clickedPosition = Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          _clickedPosition = details.localPosition;
        });
      },
      child: Container(
        width: 300,
        height: 300,
        child: CustomPaint(
          size: Size.infinite,
          painter: ComplexShapePainter(_clickedPosition),
        ),
      ),
    );
  }
}
