import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: double.infinity,
                width: 100.0,
                color: Colors.red,
                child: Center(child: Text('Container 1')),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                child: Center(child: Text('Container 2')),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellow.withOpacity(0.5),
                      offset: Offset(0, 100),
                    ),
                  ],
                ),
              ),
              Container(
                height: double.infinity,
                width: 100.0,
                color: Colors.blue,
                child: Center(child: Text('Container 2')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
