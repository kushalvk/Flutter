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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Center(
          child: Text("First Flutter Project",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
        ),
      ),
      body: Center(
          child: Text("Hello From Flutter :)", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),)
      ),
    );
  }
}


