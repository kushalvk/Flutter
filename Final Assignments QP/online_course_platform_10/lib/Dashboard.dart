import 'package:flutter/material.dart';
import 'package:online_course_platform_10/CoursePage.dart';
import 'package:online_course_platform_10/ProfilePage.dart';

class Dashboard extends StatefulWidget {
  final String Username;
  const Dashboard({super.key, required this.Username});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
      body: Column(
        children: [
          Text("Welcome ${widget.Username} 😊"),
          SizedBox(height: 10,),
          RadioListTile(
            title: Text("Course"),
            value: "Course",
            onChanged: (v) {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CoursePage())
                );
              });
            },
          ),
          RadioListTile(
            title: Text("Profile"),
            value: "Profile",
            onChanged: (v) {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage())
                );
              });
            },
          ),
        ],
      ),
    );
  }
}
