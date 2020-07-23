import 'dart:math';

import 'package:flutter/widgets.dart';

class Utils {
  static double degreeToRadian(double degree){
    return (pi * degree) / 180;
  }

  static Color radomColor(){
    final rand = Random();
    return Color.fromRGBO(rand.nextInt(255),rand.nextInt(255), rand.nextInt(255), 1);
  }
}