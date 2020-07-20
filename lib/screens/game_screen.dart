import 'package:flutter/material.dart';
import 'package:right_brain_puzzle/data/data.dart';
import 'package:right_brain_puzzle/models/color_card.dart';

class GameScreen extends StatefulWidget {
  GameScreen({Key key}) : super(key: key);
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  GlobalKey key = GlobalKey();

  List<ColorCard> colorCards = List<ColorCard>();
  List<ColorCard> moveableCards = [];
  bool _completed = false;
  @override
  void initState() {
    super.initState();
    _startGame();
  }

  void _startGame() {
    moveableCards = [];
    colorCards = getColorCards();
    colorCards.forEach((element) {
      if (element.moveable == true) {
        moveableCards.add(element);
      }
    });
    colorCards.removeWhere((element) => element.moveable);
    moveableCards.shuffle();
    colorCards.insertAll(5, moveableCards);
  }

  @override
  Widget build(BuildContext context) {
    if (_orderChecker(colorCards)) {
      setState(() {
        _completed = true;
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Screen'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    (_orderChecker(colorCards))
                        ? 'YOU WIN!'
                        : 'Swap the tiles to fix the gradient',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    (_completed) ? '👍👍👍👍' : '',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
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
                    child: Stack(
                      children: [
                        AnimatedSwitcher(
                          switchInCurve: Curves.easeIn,
                          switchOutCurve: Curves.easeOut,
                          duration: const Duration(milliseconds: 300),
                          transitionBuilder: // TODO: look at AnimatedSwitcherLayoutBuilder
                              (Widget child, Animation<double> animation) {
                            return ScaleTransition(
                              child: child,
                              scale: animation,
                            );
                          },
                          child: Container(
                            key: ValueKey<int>(colorCards[index].count),
                            margin: (firstSelectedIndex != -1 &&
                                    firstSelectedIndex == index)
                                ? EdgeInsets.all(5)
                                : EdgeInsets.all(0),
                            child: TileCard(
                              index: index,
                              color: colorCards[index].color,
                              parent: this,
                            ),
                          ),
                        ),
                        if (!colorCards[index].moveable)
                          Center(
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (_completed)
              Expanded(
                flex: 1,
                child: Center(
                  child: Container(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        'Play Again?',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _completed = false;
                          _startGame();
                        });
                      },
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
    correctOrder.add(i + 1);
  }

  // print('current Order ===>==>==> ${order.map((e) => e.count).toList()}');
  // print('correctOrder ======= $correctOrder');

  List currentOrder = order.map((e) => e.count).toList();
  for (int i = 0; i < currentOrder.length; i++) {
    if (currentOrder[i] != correctOrder[i]) {
      return false;
    }
  }
  return true;
}
