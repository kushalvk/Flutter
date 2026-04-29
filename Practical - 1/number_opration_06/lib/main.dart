import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Calculator")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(controller: n1),
              TextField(controller: n2),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    int a = int.parse(n1.text);
                    int b = int.parse(n2.text);
                    result = "Add: ${a + b}";
                  });
                },
                child: const Text("Addition"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    int a = int.parse(n1.text);
                    int b = int.parse(n2.text);
                    result = "Sub: ${a - b}";
                  });
                },
                child: const Text("Subtraction"),
              ),
              Text(result),
            ],
          ),
        ),
      ),
    );
  }
}