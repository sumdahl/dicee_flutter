import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dice',
            style: TextStyle(fontSize: 25, fontFamily: 'Poppins'),
          ),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState((){
                  leftDiceNumber = 6;
                  print('diceNumber = $leftDiceNumber');
                });
              },
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    'images/dice$leftDiceNumber.png'
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right button got pressed');
              },
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Image.asset('images/dice1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}