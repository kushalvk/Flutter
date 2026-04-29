import 'package:employe_login/Welcome.dart';
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

  TextEditingController EmployeeCodeController = TextEditingController();
  TextEditingController EmployeeNameController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  void login() {
    if(EmployeeCodeController.text == "EMP7" && PasswordController.text == "123") {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Welcome(EmpName: EmployeeNameController.text))
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Employee Login System", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25
        ),),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: EmployeeCodeController,
                decoration: InputDecoration(
                  labelText: "Employee Code",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: EmployeeNameController,
                decoration: InputDecoration(
                    labelText: "Employee Name",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: PasswordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password)
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: login, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
