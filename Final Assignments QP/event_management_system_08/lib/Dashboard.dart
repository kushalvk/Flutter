import 'package:event_management_system_08/Concerts.dart';
import 'package:event_management_system_08/Conferences.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  TextEditingController eventNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController vanueController = TextEditingController();

  void submit () {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Concerts(
          eventName: eventNameController.text,
          date: dateController.text,
          value: vanueController.text,
        ))
    );
  }

  void conferences() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Conferences())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Dashboard", style: TextStyle(
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
              Text("Welcome, Organizer! 😊", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),),
              SizedBox(height: 10,),
              TextField(
                controller: eventNameController,
                decoration: InputDecoration(
                  labelText: "Event Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.event)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: dateController,
                decoration: InputDecoration(
                  labelText: "",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.date_range)
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100)
                  );
          
                  if(picked != null) {
                    setState(() {
                      dateController.text = "${picked.day}/${picked.month}/${picked.year}";
                    });
                  }
                }
              ),
              SizedBox(height: 10,),
              TextField(
                controller: vanueController,
                decoration: InputDecoration(
                    labelText: "Vanue",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.local_convenience_store_outlined)
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: submit, child: Text("Submit")),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: conferences, child: Text("Conferences"))
            ],
          ),
        ),
      ),
    );
  }
}
