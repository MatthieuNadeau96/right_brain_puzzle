import 'package:flutter/material.dart';
import 'package:right_brain_puzzle/models/color_card.dart';

int firstSelectedIndex = -1;
int secondSelectedIndex = -1;

List<ColorCard> getColorCards() {
  List<ColorCard> colorCards = List<ColorCard>();
  ColorCard colorCard = ColorCard();

  //1
  colorCard.setColor(Colors.blue[100]);
  colorCards.add(colorCard);

  colorCard = ColorCard();

  //2
  colorCard.setColor(Colors.blue[300]);
  colorCards.add(colorCard);

  colorCard = ColorCard();

  //3
  colorCard.setColor(Colors.blue[400]);
  colorCards.add(colorCard);

  colorCard = ColorCard();

  //4
  colorCard.setColor(Colors.blue[700]);
  colorCards.add(colorCard);

  colorCard = ColorCard();

  //4
  colorCard.setColor(Colors.blue[900]);
  colorCards.add(colorCard);

  colorCard = ColorCard();

  return colorCards;
}
