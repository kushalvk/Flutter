import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String transportation = "Car";

  Widget radio(String name) {
    return RadioListTile(
      title: Text(name),
      value: name,
      groupValue: transportation,
      onChanged: (v) {
        setState(() {
          transportation = v.toString();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Transportation", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      ),
      body: Column(
        children: [
          radio("Car"),
          radio("Bike"),
          radio("Bus"),
          radio("Train"),
          SizedBox(height: 10,),
          Text("Selected: $transportation")
        ],
      ),
    );
  }
}
