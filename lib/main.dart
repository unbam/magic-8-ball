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
  var _ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: FlatButton(
          onPressed: (){
            setState(() {
              _ballNumber = Random().nextInt(5) + 1; // 0 - 4
              print('I got clicked $_ballNumber');
            });
          },
          child: Image.asset('images/ball$_ballNumber.png'),
        )
      ),
      backgroundColor: Colors.blue,
    );
  }
}
