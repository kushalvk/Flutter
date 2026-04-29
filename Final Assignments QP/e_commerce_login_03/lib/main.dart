import 'package:e_commerce_login_03/Welcome.dart';
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

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String errorMessage = '';

  void login() {
    if(usernameController.text == "user" && passwordController.text == "user123") {
      errorMessage = '';
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Welcome(Username: usernameController.text))
      );
    } else {
      errorMessage = 'Invalid Username or Password';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("E-commerce Login Page", style: TextStyle(
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
              Text(errorMessage, style: TextStyle(color: Colors.red),),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: login, child: Text("Login", style: TextStyle(
                fontSize: 15,
              ),))
            ],
          ),
        ),
      ),
    );
  }
}
