import 'package:flutter/material.dart';

class ColorCard {
  Color color;

  ColorCard({
    this.color,
  });

  void setColor(Color getColor) {
    color = getColor;
  }

  Color getColor() {
    return color;
  }
}
