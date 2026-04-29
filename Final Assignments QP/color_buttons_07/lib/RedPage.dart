import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Text("Welcome to Red Page", style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25
      ),),
    );
  }
}
