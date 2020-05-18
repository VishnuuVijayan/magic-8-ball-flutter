import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var ball1 = 1;

  void randomBall() {
    setState(() {
      ball1 = Random().nextInt(5) + 1;
    });
    print(ball1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue,
      body: Container(
        child: Center(
          child: FlatButton(
            onPressed: () {
              randomBall();
            },
            child: Image.asset('images/ball$ball1.png'),
          ),
        ),
      ),
    );
  }
}
