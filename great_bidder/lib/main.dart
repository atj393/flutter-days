import 'package:flutter/material.dart';

int _bid_amount = 0;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Great Bidder'),
        ),
        backgroundColor: Colors.cyan,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(Icons.money, color: Colors.green[500]),
                  Text('Bid from Bob :'),
                ],
              ),
              Divider(
                thickness: 1,
              ),
              Row(
                children: [
                  Icon(Icons.money, color: Colors.green[500]),
                  Text('Bid from You : $_bid_amount'),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonBar(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.plus_one),
                      onPressed: () {
                        _bid_amount++;
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.exposure_minus_1),
                      onPressed: () {
                        _bid_amount--;
                      },
                    ),
                    IconButton(icon: const Icon(Icons.done)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
