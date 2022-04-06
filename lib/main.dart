import 'package:flutter/material.dart';

int counter = 5;

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    changeDice() {}

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: changeDice(),
              child: Image.asset(
                'images/dice1.png',
              ),
            ),
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(16),
                child: Image.asset('images/dice2.png')),
          ),
        ],
      ),
    );
  }
}
