import 'package:flutter/material.dart';
import 'package:right_brain_puzzle/models/color_card.dart';

int firstSelectedIndex = -1;
int secondSelectedIndex = -1;

List<ColorCard> getColorCards() {
  List<ColorCard> colorCards = [
    ColorCard(
      color: Color(0xff065C5C), // a1 green
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
      color: Color(0xffF0E114), // a5 // b1 yellow
      count: 5,
      moveable: false,
    ),
    ColorCard(
      color: Color(0xff06465B), // d4
      count: 6,
      moveable: true,
    ),
    ColorCard(
      color: Color(0xff40654A), //
      count: 7,
      moveable: true,
    ),
    ColorCard(
      color: Color(0xff7B8539), //
      count: 8,
      moveable: true,
    ),
    ColorCard(
      color: Color(0xffB6A428), //
      count: 9,
      moveable: true,
    ),
    ColorCard(
      color: Color(0xffF1C418), //
      count: 10,
      moveable: true,
    ),
    ColorCard(
      color: Color(0xff07315B), //d3
      count: 11,
      moveable: true,
    ),
    ColorCard(
      color: Color(0xff414E4B),
      count: 12,
      moveable: true,
    ),
    ColorCard(
      color: Color(0xff7C6C3B),
      count: 13,
      moveable: true,
    ),
    ColorCard(
      color: Color(0xffB7892B),
      count: 14,
      moveable: true,
    ),
    ColorCard(
      color: Color(0xffF2A71C),
      count: 15,
      moveable: true,
    ),
    ColorCard(
      color: Color(0xff081B5B), //d2
      count: 16,
      moveable: true,
    ),
    ColorCard(
      color: Color(0xff42364C),
      count: 17,
      moveable: true,
    ),
    ColorCard(
      color: Color(0xff7D523D),
      count: 18,
      moveable: true,
    ),
    ColorCard(
      color: Color(0xffB86E2E),
      count: 19,
      moveable: true,
    ),
    ColorCard(
      color: Color(0xffF38A20),
      count: 20,
      moveable: true,
    ),
    ColorCard(
      color: Color(0xff09065B), // d1 // c5 blue
      count: 21,
      moveable: false,
    ),
    ColorCard(
      color: Color(0xff431F4D), // c4
      count: 22,
      moveable: false,
    ),
    ColorCard(
      color: Color(0xff7E3940), // c3
      count: 23,
      moveable: false,
    ),
    ColorCard(
      color: Color(0xffB95332), // c2
      count: 24,
      moveable: false,
    ),
    ColorCard(
      color: Color(0xffF46D25), // b4 // c1 orange
      count: 25,
      moveable: false,
    ),
  ];
  return colorCards;
}
