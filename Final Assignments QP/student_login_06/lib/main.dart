import 'package:flutter/material.dart';
import 'package:student_login_06/Dashboard.dart';

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

  TextEditingController studentIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String ErrorMessage = "";

  void login() {
    if(studentIdController.text == "25MSIT187" && passwordController.text == "123") {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Dashboard(studentId: studentIdController.text,))
      );
    } else {
      setState(() {
        ErrorMessage = "Invalid Student Id or Password";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Login", style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
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
                controller: studentIdController,
                decoration: InputDecoration(
                  labelText: "Student ID",
                  border:OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    labelText: "Password",
                    border:OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password)
                ),
              ),
              SizedBox(height: 10,),
              Text(ErrorMessage, style: TextStyle(color: Colors.red),),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: login, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
