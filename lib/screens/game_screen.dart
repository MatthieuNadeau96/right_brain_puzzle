import 'package:flutter/material.dart';
import 'package:right_brain_puzzle/data/data.dart';
import 'package:right_brain_puzzle/models/color_card.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<ColorCard> pairs = List<ColorCard>();

  @override
  void initState() {
    super.initState();
    pairs = getPairs();
    pairs.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Screen'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tap {Red}',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '{Counter}',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 500,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                children: List.generate(
                  pairs.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        if (firstSelectedIndex == -1) {
                          firstSelectedIndex = index;
                        } else {
                          secondSelectedIndex = index;
                          _swap(pairs, firstSelectedIndex, secondSelectedIndex);
                          firstSelectedIndex = -1;
                          secondSelectedIndex = -1;
                        }
                      });
                    },
                    child: TileCard(
                      index: index,
                      color: pairs[index].getColor(),
                      parent: this,
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
  _GameScreenState parent;

  TileCard({
    this.color,
    this.index,
    this.parent,
  });

  @override
  _TileCardState createState() => _TileCardState();
}

class _TileCardState extends State<TileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.all(2),
      color: widget.color,
    );
  }
}

void _swap(input, indexA, indexB) {
  var temp = input[indexA];

  input[indexA] = input[indexB];
  input[indexB] = temp;
}
