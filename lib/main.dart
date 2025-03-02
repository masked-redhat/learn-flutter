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
    var fieldController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: TextField(
                controller: fieldController,
                decoration: InputDecoration(
                  hintText: "Enter",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                  suffixText: "Great",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => print(fieldController.text),
              child: Text("Clikc me"),
            ),
            Text('${DateFormat('yQQQ').format(DateTime.now())}'),
          ],
        ),
      ),
    );
  }
}
