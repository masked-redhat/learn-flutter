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
      body: Center(
        child: GestureDetector(
          child: Container(width: 200, height: 200, color: Colors.amber),
          onTap: () => print("On Tap"),
          onLongPress: () => print("On Long press"),
          onDoubleTap: () => print("double tap"),
        ),
      ),
    );
  }
}
