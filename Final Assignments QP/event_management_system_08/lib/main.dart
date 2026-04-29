import 'package:event_management_system_08/Dashboard.dart';
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

  TextEditingController eventIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String ErrorMessage = "";

  void login() {
    if(eventIdController.text == "E101" && passwordController.text == "EV101") {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Dashboard())
      );
    } else {
      setState(() {
        ErrorMessage = "Invalid Event ID and Password";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Even MS Login", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25
        ),),
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: eventIdController,
                decoration: InputDecoration(
                  labelText: "Even Id",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                ),
              ),
              SizedBox(height: 10,),
              Text(ErrorMessage, style: TextStyle(
                color: Colors.red
              ),),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: login, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
