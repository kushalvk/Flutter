import 'package:flutter/material.dart';

class BluePage extends StatelessWidget {
  const BluePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Text("Welcome to blue Page", style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25
      ),),
    );
  }
}
