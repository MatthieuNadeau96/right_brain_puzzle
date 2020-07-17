import 'package:flutter/material.dart';
import 'package:right_brain_puzzle/data/data.dart';
import 'package:right_brain_puzzle/models/color_card.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<ColorCard> colorCards = List<ColorCard>();
  bool _completed = false;
  List<ColorCard> _moveableCards = [];
  @override
  void initState() {
    super.initState();
    colorCards = getColorCards();
    colorCards.forEach((element) {
      if (element.moveable == true) {
        _moveableCards.add(element);
      }
    });
    print(_moveableCards);
    _moveableCards.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    // print((colorCards.map((e) => e.count).toList()));
    // print(_orderChecker(colorCards));
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Screen'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              (_orderChecker(colorCards)) ? 'YOU WIN!' : 'Poo Poo Pee Pee',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            Text(
              (_orderChecker(colorCards)) ? '👍👍👍👍' : '💩',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 500,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                ),
                children: List.generate(
                  colorCards.length,
                  (index) => GestureDetector(
                    onTap: () {
                      if (colorCards[index].moveable) {
                        setState(() {
                          if (firstSelectedIndex == -1) {
                            firstSelectedIndex = index;
                          } else {
                            secondSelectedIndex = index;
                            _swap(colorCards, firstSelectedIndex,
                                secondSelectedIndex);
                            firstSelectedIndex = -1;
                            secondSelectedIndex = -1;
                          }
                        });
                      } else {
                        return;
                      }
                    },
                    child: Container(
                      margin: (firstSelectedIndex != -1 &&
                              firstSelectedIndex == index)
                          ? EdgeInsets.all(10)
                          : EdgeInsets.all(0),
                      child: TileCard(
                        index: index,
                        color: colorCards[index].color,
                        parent: this,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TileCard extends StatefulWidget {
  final Color color;
  int index;
  bool isSelected;
  _GameScreenState parent;

  TileCard({
    this.color,
    this.index,
    this.parent,
    this.isSelected,
  });

  @override
  _TileCardState createState() => _TileCardState();
}

class _TileCardState extends State<TileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      // width: 50,
      color: widget.color,
    );
  }
}

void _swap(input, indexA, indexB) {
  var temp = input[indexA];

  input[indexA] = input[indexB];
  input[indexB] = temp;
}

bool _orderChecker(List order) {
  var correctOrder = [];
  for (var i = 0; i < order.length; i++) {
    correctOrder.add(i);
  }
  // print('correctOrder ======= $correctOrder');

  List currentOrder = order.map((e) => e.count).toList();
  for (int i = 0; i < currentOrder.length; i++) {
    if (currentOrder[i] != correctOrder[i]) {
      return false;
    }
  }
  return true;
}
