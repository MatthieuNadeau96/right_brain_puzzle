import 'package:flutter/material.dart';
import 'package:right_brain_puzzle/models/color_card.dart';

int firstSelectedIndex = -1;
int secondSelectedIndex = -1;

List<ColorCard> getColorCards() {
  List<ColorCard> colorCards = [
    ColorCard(
      color: Color(0xff065C5C), // a1
      count: 1,

      moveable: false,
    ),
    ColorCard(
      color: Color(0xff407D4A), // a2
      count: 2,

      moveable: false,
    ),
    ColorCard(
      color: Color(0xff7B9E38), // a3
      count: 3,

      moveable: false,
    ),
    ColorCard(
      color: Color(0xffB5BF26), // a4
      count: 4,

      moveable: false,
    ),
    ColorCard(
      color: Color(0xffF0E114), // a6 & b1
      count: 5,

      moveable: false,
    ),
    ColorCard(
      color: Color(0xffF1C418), // b2
      count: 6,

      moveable: false,
    ),
    ColorCard(
      color: Color(0xffF2A71C), // b3
      count: 7,

      moveable: false,
    ),
    ColorCard(
      color: Color(0xffF38A20), // b4
      count: 8,

      moveable: false,
    ),
    ColorCard(
      color: Color(0xffF46D25), // b5 & c1
      count: 9,

      moveable: false,
    ),
    ColorCard(
      color: Colors.pink, // b6
      count: 10,
      moveable: false,
    ),
    ColorCard(
      color: Colors.red[100],
      count: 11,
      moveable: false,
    ),
    ColorCard(
      color: Colors.red[200],
      count: 12,
      moveable: false,
    ),
    ColorCard(
      color: Colors.red[300],
      count: 13,
      moveable: false,
    ),
    ColorCard(
      color: Colors.red[400],
      count: 14,
      moveable: false,
    ),
    ColorCard(
      color: Colors.red[500],
      count: 15,
      moveable: false,
    ),
    ColorCard(
      color: Colors.red[600],
      count: 16,
      moveable: false,
    ),
    ColorCard(
      color: Colors.red[700],
      count: 17,
      moveable: false,
    ),
    ColorCard(
      color: Colors.red[800],
      count: 18,
      moveable: false,
    ),
    ColorCard(
      color: Colors.red[900],
      count: 19,
      moveable: false,
    ),
    ColorCard(
      color: Colors.purple[100],
      count: 20,
      moveable: false,
    ),
    ColorCard(
      color: Colors.purple[200],
      count: 21,
      moveable: false,
    ),
    ColorCard(
      color: Colors.purple[300],
      count: 22,
      moveable: false,
    ),
    ColorCard(
      color: Colors.purple[400],
      count: 23,
      moveable: false,
    ),
    ColorCard(
      color: Colors.purple[500],
      count: 24,
      moveable: false,
    ),
    ColorCard(
      color: Colors.blue[600],
      count: 25,
      moveable: false,
    ),
  ];
  return colorCards;
}
