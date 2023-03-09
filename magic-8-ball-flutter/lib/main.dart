import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text('Ask me anything I Dare YOU ? '),
          backgroundColor: Colors.blueGrey,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  // const BallPage({Key? key}) : super(key: key);
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int Ballnumber = 1;
  void Ball() {
    setState(() {
      Ballnumber = Random().nextInt(5) + 1;
      print('$Ballnumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                Ball();
              },
              child: Image.asset('images/ball$Ballnumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
