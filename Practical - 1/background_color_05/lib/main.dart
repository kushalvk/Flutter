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
  Color bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(title: const Text("Color Change App")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => setState(() => bgColor = Colors.red),
                child: const Text("Red"),
              ),
              ElevatedButton(
                onPressed: () => setState(() => bgColor = Colors.green),
                child: const Text("Green"),
              ),
              ElevatedButton(
                onPressed: () => setState(() => bgColor = Colors.blue),
                child: const Text("Blue"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}