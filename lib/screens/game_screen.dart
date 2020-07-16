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
                // itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                // itemBuilder: (context, index) {
                //   return ColorCard(
                //     index: index,
                //     color: Colors.blue,
                //   );
                // },
                children: List.generate(
                    pairs.length,
                    (index) => TileCard(
                          color: pairs[index].getColor(),
                          isSelected: pairs[index].getIsSelected(),
                          parent: this,
                        )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TileCard extends StatelessWidget {
  final Color color;
  bool isSelected;

  _GameScreenState parent;

  TileCard({
    this.color,
    this.isSelected,
    this.parent,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
    );
  }
}
