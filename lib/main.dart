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
    var arrNames = ["Raman", "Ramanujan", "Priya"];

    return Scaffold(
      body: Center(
        //     child: ListView(
        //       //   scrollDirection: Axis.vertical,
        //       //   reverse: true,
        //       children: [
        //         Text(
        //           "One",
        //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //         ),
        //         Text(
        //           "Two",
        //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //         ),
        //         Text(
        //           "Three",
        //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //         ),
        //         Text(
        //           "Four",
        //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //         ),
        //         Text(
        //           "Five",
        //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //         ),
        //       ],
        //     ),

        // child: ListView.builder(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return Divider(height: 4, thickness: 4);
          },
        ),
      ),
    );
  }
}
