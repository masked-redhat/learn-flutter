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
        body: Text(
          'Hello there',
          style: TextStyle(
            color: Colors.white,
            fontSize: 34,
            fontFamily: 'montserrat',
            fontWeight: FontWeight.w200,
            backgroundColor: Colors.orange,
          ),
        ),
      ),
    );
  }
}
