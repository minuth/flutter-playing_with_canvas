import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Utils {
  static double degreeToRadian(double degree){
    return (pi * degree) / 180;
  }

  static Color radomColor(){
    final rand = Random();
    return Color.fromRGBO(rand.nextInt(255),rand.nextInt(255), rand.nextInt(255), 1);
  }

   static void drawIcon(Canvas canvas, IconData icon, Offset drawPoint, {Color color = Colors.white, double size = 30}){
    final paragraph = ui.ParagraphBuilder(ui.ParagraphStyle(fontSize: size,textAlign: TextAlign.center));
    paragraph.pushStyle(ui.TextStyle(color: color, fontFamily: icon.fontFamily));
    paragraph.addText(String.fromCharCode(icon.codePoint));
    canvas.drawParagraph(paragraph.build()..layout(ui.ParagraphConstraints(width: Size.infinite.width)), drawPoint);
  }

}