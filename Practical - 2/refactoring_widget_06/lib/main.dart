import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Refactoring Application Demo",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Refactoring Application", style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Center(
        child: MyButton(),
      ),
    ),
  ));
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text("Refactoring Widget Button"));
  }
}
