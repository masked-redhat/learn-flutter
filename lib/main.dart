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
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.red,
            // borderRadius: BorderRadius.all(Radius.circular(21)),
            border: Border.all(width: 2, color: Colors.blueGrey),
            boxShadow: [
              BoxShadow(
                blurRadius: 11,
                spreadRadius: 2,
                offset: Offset(20, 11),
                color: Colors.amber,
              ),
            ],
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
