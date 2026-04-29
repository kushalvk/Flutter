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

  bool flag = false;
  Widget Button(String b_name, Color b_color, double b_size) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: b_color,
        minimumSize: Size(b_size, b_size),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        )
      ),
        onPressed: (){
        setState(() {
          flag = !flag;
        });
        },
        child: AnimatedDefaultTextStyle(
            child: Text(b_name),
            style: TextStyle(fontSize: flag ? 25 : 16, color: Colors.white),
            duration: Duration(milliseconds: 550)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Wedget", style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button("Sign up", Colors.blue, 30),
            SizedBox(height: 10,),
            Button("Login", Colors.green, 60),
            SizedBox(height: 10,),
            Button("Logout", Colors.red, 90),
          ],
        ),
      ),
    );
  }
}
