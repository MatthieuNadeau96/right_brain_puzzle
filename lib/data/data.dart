import 'package:flutter/material.dart';
import 'package:right_brain_puzzle/models/color_card.dart';

int firstSelectedIndex = -1;
int secondSelectedIndex = -1;

List<ColorCard> getColorCards() {
//   List<ColorCard> colorCards = List<ColorCard>();
//   ColorCard colorCard = ColorCard();

//   //1
//   colorCard.setColor(Colors.blue[100]);
//   colorCards.add(colorCard);
//   colorCard = ColorCard();
//   //2
//   colorCard.setColor(Colors.blue[300]);
//   colorCards.add(colorCard);
//   colorCard = ColorCard();
//   //3
//   colorCard.setColor(Colors.blue[600]);
//   colorCards.add(colorCard);
//   colorCard = ColorCard();
//   //4
//   colorCard.setColor(Colors.blue[700]);
//   colorCards.add(colorCard);
//   colorCard = ColorCard();
//   //5
//   colorCard.setColor(Colors.blue[800]);
//   colorCards.add(colorCard);
//   colorCard = ColorCard();
//   //6
//   colorCard.setColor(Colors.blue[900]);
//   colorCards.add(colorCard);
//   colorCard = ColorCard();

//   return colorCards;

  List<ColorCard> colorCards = [
    ColorCard(
      color: Colors.blue[100],
      count: 1,
    ),
    ColorCard(
      color: Colors.blue[200],
      count: 2,
    ),
    ColorCard(
      color: Colors.blue[300],
      count: 3,
    ),
    ColorCard(
      color: Colors.blue[400],
      count: 4,
    ),
    ColorCard(
      color: Colors.blue[500],
      count: 5,
    ),
    ColorCard(
      color: Colors.blue[600],
      count: 6,
    ),
    ColorCard(
      color: Colors.blue[700],
      count: 7,
    ),
    ColorCard(
      color: Colors.blue[800],
      count: 8,
    ),
    ColorCard(
      color: Colors.blue[900],
      count: 9,
    ),
  ];
  return colorCards;
}
