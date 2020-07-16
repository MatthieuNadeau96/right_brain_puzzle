import 'package:flutter/material.dart';

class ColorCard {
  Color color;
  bool isSelected;

  ColorCard({
    this.color,
    this.isSelected,
  });

  void setColor(Color getColor) {
    color = getColor;
  }

  void setIsSelected(bool getIsSelected) {
    isSelected = getIsSelected;
  }

  Color getColor() {
    return color;
  }

  bool getIsSelected() {
    return isSelected;
  }
}
