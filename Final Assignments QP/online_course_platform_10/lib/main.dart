import 'package:flutter/material.dart';
import 'package:online_course_platform_10/Dashboard.dart';

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

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String ErrorMessage = "";
  void login() {
    if(usernameController.text == "temp" && passwordController.text == "temp123") {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Dashboard(Username: usernameController.text,))
      );
    } else {
      setState(() {
        ErrorMessage = "Invalid Username and Password";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Online Course Platform", style: TextStyle(
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
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password)
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
