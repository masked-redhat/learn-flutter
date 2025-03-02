import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainWidget(), debugShowCheckedModeBanner: false);
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.lightGreen,
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.deepOrange,
                    ),
                    Container(width: 200, height: 200, color: Colors.blue),
                    Container(width: 200, height: 200, color: Colors.grey),
                  ],
                ),
              ),
              Container(height: 200, color: Colors.lightBlue),
              Container(height: 200, color: Colors.amber),
              Container(height: 200, color: Colors.black),
              Container(height: 200, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
