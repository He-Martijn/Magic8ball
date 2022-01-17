import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask me anything',
            style: TextStyle(
              fontWeight: FontWeight.bold
            )

          ),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue.shade500,
          child: Ball(),
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 2;
  void whenPressed(){
    print('whenPressed is active');
    print('old ballNumber = $ballNumber');
    ballNumber = Random().nextInt(5) + 1;
    print('new ballNumber = $ballNumber');
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        print('button is pressed');
        setState(() {
          whenPressed();
        });
      },
      child: Container(
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
