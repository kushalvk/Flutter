import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  final String EmpName;
  const Welcome({super.key, required this.EmpName});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Welcome Page", style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Text("Welcome Employee ${widget.EmpName} :)", style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),),
    );
  }
}
