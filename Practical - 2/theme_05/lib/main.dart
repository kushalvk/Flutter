import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Theme App",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      iconTheme: const IconThemeData(size: 70, color: Colors.green),
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text("Theme Demo Application", style: TextStyle(
          fontSize: 25
        ),),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home),
          Icon(Icons.favorite),
          Icon(Icons.settings),
        ],
      ),
    ),
  ));
}