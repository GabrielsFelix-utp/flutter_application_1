import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  900: const Color.fromARGB(255, 255, 254, 167),
};

abstract class CustomColors {
  static Color customContrastColor = Colors.red.shade800;

  static MaterialColor customSwatchColor =
      MaterialColor(0xFF8BC34A, _swatchOpacity);
}
