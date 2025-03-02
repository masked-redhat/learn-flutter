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
    return Scaffold(body: Text("hello"));
  }
}
