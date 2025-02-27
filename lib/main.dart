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
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => {print("Hello there"), print("Goa")},
                onLongPress: () => {print("Longed")},
                child: Text('gogo'),
              ),
              OutlinedButton(
                onPressed: () => {print("Hello there2")},
                onLongPress: () => {print("Longed2")},
                child: Text('gogo2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
