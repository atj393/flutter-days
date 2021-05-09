import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'I am Rich!',
          ),
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.green[200],
        body: Center(
          child: Image(
            image: AssetImage('images/flutter_logo.png'),
          ),
        ),
      ),
    ),
  );
}
