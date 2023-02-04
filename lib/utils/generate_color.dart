
import 'dart:math';

import 'package:flutter/material.dart';

Color getRandomColor(){
  Random red=Random();
  Random green=Random();
  Random blue=Random();
  int r=red.nextInt(257);
  int g=green.nextInt(257);
  int b=blue.nextInt(257);
  return Color.fromRGBO(r, g, b, 1);
}