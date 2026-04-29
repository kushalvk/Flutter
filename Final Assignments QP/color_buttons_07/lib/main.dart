import 'package:color_buttons_07/BluePage.dart';
import 'package:color_buttons_07/GreenPage.dart';
import 'package:color_buttons_07/RedPage.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Color Buttons", style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RedPage()));
              });
            }, child: Text("Red")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GreenPage()));
              });
            }, child: Text("Green")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BluePage()));
              });
            }, child: Text("Blue")),
          ],
        ),
      ),
    );
  }
}
