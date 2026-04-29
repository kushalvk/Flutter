import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Card Demo",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Card Demo Application", style: TextStyle(
          fontSize: 25
        ),),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Text("Card Widget Demo Example"),
          )
        ),
      ),
    ),
  ));
}