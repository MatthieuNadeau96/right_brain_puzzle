import 'package:flutter/material.dart';
import 'package:right_brain_puzzle/models/color_card.dart';

int firstSelectedIndex = -1;
int secondSelectedIndex = -1;

List<ColorCard> getPairs() {
  List<ColorCard> pairs = List<ColorCard>();
  ColorCard colorCard = ColorCard();

  //1
  colorCard.setColor(Colors.blue[100]);
  pairs.add(colorCard);
  pairs.add(colorCard);

  colorCard = ColorCard();

  //2
  colorCard.setColor(Colors.blue[300]);
  pairs.add(colorCard);
  pairs.add(colorCard);

  colorCard = ColorCard();

  //3
  colorCard.setColor(Colors.blue[400]);
  pairs.add(colorCard);
  pairs.add(colorCard);

  colorCard = ColorCard();

  //4
  colorCard.setColor(Colors.blue[700]);
  pairs.add(colorCard);
  pairs.add(colorCard);
  pairs.add(colorCard);

  colorCard = ColorCard();

  return pairs;
}
