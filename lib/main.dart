import 'package:app1/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application 1',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headlineSmall: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 16),
        ),
      ),
      home: MainWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var colors = [
      Colors.red,
      Colors.amber,
      Colors.blue,
      Colors.lightGreen,
      Colors.red,
      Colors.amber,
      Colors.lightBlue,
      Colors.purple,
    ];

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500,
            ),
            itemBuilder: (context, index) {
              return Container(color: colors[index]);
            },
            itemCount: 6,
          ),
          //   child: GridView.extent(
          //     // crossAxisCount: 2,
          //     maxCrossAxisExtent: 100,
          //     mainAxisSpacing: 12,
          //     crossAxisSpacing: 12,
          //     children: [
          //       Text('${colors.length}'),
          //       Container(color: colors[0]),
          //       Container(color: colors[1]),
          //       Container(color: colors[2]),
          //       Container(color: colors[3]),
          //       Container(color: colors[4]),
          //       Container(color: colors[5]),
          //       Container(color: colors[6]),
          //       Container(color: colors[7]),
          //     ],
          //   ),
        ),
      ),
    );
  }
}
