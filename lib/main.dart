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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Left button got pressed');
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Image.asset(
                  'images/dice1.png',
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
                padding: EdgeInsets.all(12),
                child: Image.asset('images/dice2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
