import 'package:flutter/material.dart';
import 'package:right_brain_puzzle/models/color_card.dart';

List<ColorCard> getPairs() {
  List<ColorCard> pairs = List<ColorCard>();
  ColorCard colorCard = ColorCard();

  //1
  colorCard.setColor(Colors.blue[100]);
  colorCard.setIsSelected(false);
  pairs.add(colorCard);
  pairs.add(colorCard);

  colorCard = ColorCard();

  //2
  colorCard.setColor(Colors.blue[300]);
  colorCard.setIsSelected(false);
  pairs.add(colorCard);
  pairs.add(colorCard);

  colorCard = ColorCard();

  //3
  colorCard.setColor(Colors.blue[400]);
  colorCard.setIsSelected(false);
  pairs.add(colorCard);
  pairs.add(colorCard);

  colorCard = ColorCard();

  //4
  colorCard.setColor(Colors.blue[500]);
  colorCard.setIsSelected(false);
  pairs.add(colorCard);
  pairs.add(colorCard);
  pairs.add(colorCard);

  colorCard = ColorCard();

  return pairs;
}
