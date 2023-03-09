import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[900],
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/divyansh.jpeg'),
            ),
            Text(
              'Divyansh',
              style: TextStyle(
                fontFamily: 'PasseroOne',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'DEVELOPER MANAGER',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 20.0,
                color: Colors.teal.shade100,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 180.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Card(
              // color: Colors.brown[200],
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              // padding: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  // size: 30.0,
                  color: Colors.blue.shade900,
                ),
                title: Text(
                  '+91 8479965685',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              // color: Colors.brown[200],
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              // padding: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  // size: 30.0,
                  color: Colors.red.shade900,
                ),
                title: Text(
                  'divyanshsinghhacked11@gmail.com',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
