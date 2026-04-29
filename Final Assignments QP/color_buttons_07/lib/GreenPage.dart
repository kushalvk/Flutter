import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Text("Welcome to Green Page", style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold
      ),),
    );
  }
}
