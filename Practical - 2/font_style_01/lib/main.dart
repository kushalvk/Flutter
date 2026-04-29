import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Font Demo",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Font Demo Application", style: TextStyle(
            fontSize: 25,
            fontFamily: "Cookie-Regular"
        ),),
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(20),
            child: Text("Font Demo Body.", style: TextStyle(
              fontSize: 50,
              fontFamily: "Cookie-Regular"
        ),)),
      ),
    ),
  ));
}
