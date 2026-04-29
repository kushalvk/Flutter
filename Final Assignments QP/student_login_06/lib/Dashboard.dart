import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  final String studentId;
  const Dashboard({super.key, required this.studentId });

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2, child:
      Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Student dashboard", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),),
        bottom: const TabBar(tabs: [
          Tab(text: "Undergraduate",),
          Tab(text: "Postgraduate.",),
        ]),
      ),
      body:
        TabBarView(children: [
          Container(
            color: Colors.green,
            child: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome Student ${widget.studentId} 😊", style: TextStyle(
                  fontSize: 25
                ),),
                SizedBox(height: 10,),
                Text("Welcome Undergraduate",style: TextStyle(
                  fontSize: 25
                ),),
                SizedBox(height: 10,),
                Icon(Icons.book, size: 50,)
              ],
            )),
          ),
          Container(
            color: Colors.purple,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome Postgraduate", style: TextStyle(
                    fontSize: 25
                  ),),
                  SizedBox(height: 10,),
                  Icon(Icons.grading_outlined, size: 50,)
                ],
              ))
          ),
        ])
    )
    );
  }
}
