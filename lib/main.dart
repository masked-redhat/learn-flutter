import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application 1',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(11),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.deepOrange),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 21, left: 32),
          child: Text("Hello world", style: TextStyle(fontSize: 32)),
        ),
      ),
    );
  }
}
