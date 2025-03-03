import 'package:app1/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  @override
  State<MainWidget> createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  final number1Controller = TextEditingController();
  final number2Controller = TextEditingController();

  int sum = 0;
  var operators = [Icons.add, Icons.remove, Icons.close];
  var currOp = 0;

  void changeOperator() {
    setState(() {
      currOp = (currOp + 1) % operators.length;
    });
  }

  void calculate() {
    var num1Text = number1Controller.text;
    var num2Text = number2Controller.text;
    int num1 = num1Text.isEmpty ? 0 : int.parse(num1Text);
    int num2 = num2Text.isEmpty ? 0 : int.parse(num2Text);

    int result = 0;

    switch (currOp) {
      case 0:
        result = num1 + num2;
        break;
      case 1:
        result = num1 - num2;
        break;
      case 2:
        result = num1 * num2;
        break;
      default:
    }

    setState(() {
      sum = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  _operatorBtn(),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      _numInput(controller: number1Controller),
                      _numInput(controller: number2Controller),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              _equalsBtn(context, calculate),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _operatorBtn() {
    return SizedBox(
      width: 60,
      height: 60,
      child: ElevatedButton(
        onPressed: changeOperator,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Center(child: Icon(operators[currOp])),
      ),
    );
  }

  SizedBox _equalsBtn(BuildContext context, VoidCallback calculate) {
    return SizedBox(
      width: 300,
      height: 70,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: calculate,
        child: Text(
          "=  $sum",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}

class _numInput extends StatelessWidget {
  const _numInput({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 60,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          hintText: "Number 1",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
