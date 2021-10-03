import 'package:flutter/cupertino.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.deepOrange,
                child: ClipOval(
                  child: Image.asset(
                    'images/jobs.jpg',
                    fit: BoxFit.fill,
                    width: 100.0,
                    height: 100.0,
                  ),
                ),
              ),
              Text(
                'Steve Jobs',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'Think Different',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white,
                    fontSize: 16.0,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: 20.0,
                width: 200.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                  child: ListTile(
                      leading: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.phone,
                          size: 16.0,
                          color: Colors.green,
                        ),
                      ),
                      title: Text(
                        '+1 7890 456 123',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Source Sans Pro',
                            color: Colors.green),
                      ))),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.email,
                      size: 16.0,
                      color: Colors.green,
                    ),
                  ),
                  title: Text(
                    'jobs@apple.com',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Source Sans Pro',
                        color: Colors.green),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
