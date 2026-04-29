import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false, home: RadioDemo(),));

class RadioDemo extends StatefulWidget {
  const RadioDemo({super.key});

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {

  String course = "Flutter";

  Widget radio(String name) {
    return RadioListTile(
      title: Text(name),
      value: name,
      groupValue: course,
      onChanged: (v) {
        setState(() {
          course = v.toString();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose Course"),),
      body: Column(
        children: [
          radio("Flutter"),
          radio("PHP"),
          radio("FullStack"),
          radio("Python"),
          Text("your selected Courses is : $course")
        ],
      ),
    );
  }
}