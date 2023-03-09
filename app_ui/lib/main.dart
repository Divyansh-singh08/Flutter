import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I_Divyansh_Rich@2025'),
          backgroundColor: Colors.orange,
        ),
        body: Image(
          image: NetworkImage(''),
        ),
      ),
    ),
  );
}
