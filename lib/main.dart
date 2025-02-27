import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 700,
            height: 700,
            color: Colors.amberAccent,
            child: Center(
              child: Text('Hello there', style: TextStyle(fontSize: 25)),
            ),
          ),
        ),
      ),
    );
  }
}
