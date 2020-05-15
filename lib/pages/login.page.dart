import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blueGrey,
              Colors.lightBlueAccent,
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}
