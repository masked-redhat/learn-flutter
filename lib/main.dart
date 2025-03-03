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

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidget();
}

class _MainWidget extends State<MainWidget> {
  dynamic _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              child: SizedBox.expand(
                // expands to parent size
                // .shrink is for minimum size of the parent(for some widgets, we can set minimum width/height)
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _index += 1;
                    });
                  },
                  onLongPress: () {
                    setState(() {
                      _index = double.infinity;
                    });
                  },
                  child: Text("Incement"),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text('Current Value: ${_index}'),
            SizedBox(height: 40),
            SizedBox.square(
              // if you just want the width/height property, and not decoration like container
              //   height: 150,
              //   width: 150,
              dimension: 200,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _index -= 1;
                  });
                },
                onLongPress: () {
                  setState(() {
                    _index = 0;
                  });
                },
                child: Text("Decrement"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
