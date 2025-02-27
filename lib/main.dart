import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainWidget());
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 400,
        width: 400,
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // type of widgets, <Widget> is redundant if many types of widgets
            Text('hello', style: TextStyle(fontSize: 24)),
            Text('hello2', style: TextStyle(fontSize: 27)),
            Text('hello3', style: TextStyle(fontSize: 30)),
            Text('hello4', style: TextStyle(fontSize: 33)),
          ],
        ),
      ),
    );
  }
}
