import 'package:random_color/random_color.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

RandomColor _getRandomColor = RandomColor();

Color getRandomColors = _getRandomColor.randomMaterialColor();

Color myColor =
    Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
