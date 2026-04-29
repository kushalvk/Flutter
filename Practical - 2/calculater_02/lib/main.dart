import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculater",
      debugShowCheckedModeBanner: false,
      home: Calculater(),
    );
  }
}

class Calculater extends StatefulWidget {
  const Calculater({super.key});

  @override
  State<Calculater> createState() => _CalculaterState();
}

class _CalculaterState extends State<Calculater> {

  TextEditingController controller1 = TextEditingController();

  void calculateResult() {
    try {
      String finalText = controller1.text;

      finalText = finalText.replaceAll('X', '*');
      finalText = finalText.replaceAll('%', '/100');

      if(finalText.isEmpty) return;
      if("+-*/".contains(finalText[finalText.length - 1])) {
        finalText = finalText.substring(0, finalText.length - 1);
      }

      Parser p = Parser();
      Expression exp = p.parse(finalText);
      ContextModel cm = ContextModel();

      double result = exp.evaluate(EvaluationType.REAL, cm);

      setState(() {
        controller1.text = result.toString();
      });
    } catch (e) {
      controller1.text = "Error";
    }
  }

  void onButtonClick(String value) {
    setState(() {
      if(value == 'C') {
        controller1.clear();
      } else if(value == 'DEL') {
        if(controller1.text.isNotEmpty) {
          controller1.text = controller1.text.substring(0, controller1.text.length - 1);
        }
      } else if(value == '+/-') {
        if(controller1.text.isNotEmpty) {
          if(controller1.text.startsWith('-')) {
            controller1.text = controller1.text.substring(1);
          } else {
            controller1.text = "-${controller1.text}";
          }
        }
      } else if(value == "=") {
        calculateResult();
      } else {
        controller1.text += value;
      }
    });
  }

  Widget calcButton(String text, {Color? bgColor, double? fontSize}) {
    return Expanded(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(), // box shape
                backgroundColor: bgColor
            ),
            onPressed: () {
              onButtonClick(text);
            },
            child: Text(text, style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontSize ?? 20,
                color: Colors.black
            ),))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Calculater", style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                labelText: "Enter Number",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.numbers),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                calcButton("C", bgColor: Color(0xFFB8C6E3)),
                calcButton("+/-", bgColor: Color(0xFFB8C6E3)),
                calcButton("%", bgColor: Color(0xFFB8C6E3)),
                calcButton("DEL", bgColor: Color(0xFFB8C6E3), fontSize: 19),
              ],
            ),
            Row(
              children: [
                calcButton("7"),
                calcButton("8"),
                calcButton("9"),
                calcButton("/", bgColor: Colors.blueAccent),
              ],
            ),
            Row(
              children: [
                calcButton("4"),
                calcButton("5"),
                calcButton("6"),
                calcButton("X", bgColor: Colors.blueAccent),
              ],
            ),
            Row(
              children: [
                calcButton("1"),
                calcButton("2"),
                calcButton("3"),
                calcButton("-", bgColor: Colors.blueAccent),
              ],
            ),
            Row(
              children: [
                calcButton("0"),
                calcButton("."),
                calcButton("=", bgColor: Colors.orange),
                calcButton("+", bgColor: Colors.blueAccent),
              ],
            )
          ],
        ),
      ),
    );
  }
}
