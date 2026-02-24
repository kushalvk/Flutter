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
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  counterBtn() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
            child: Text("Counter Application", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),)
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("The Values of Counter is : $counter", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),),
          ),
          SizedBox(height: 15),
          ElevatedButton(onPressed: () {
            counterBtn();
          }, child: Text("+", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),))
        ],
      ),
    );
  }
}
