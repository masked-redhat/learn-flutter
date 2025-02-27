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
          child: TextButton(
            onPressed: () => {print("Hello there"), print("Goa")},
            onLongPress: () => {print("Longed")},
            child: Text('gogo'),
          ),
        ),
      ),
    );
  }
}
