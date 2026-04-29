import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> messages = ["Message 1", "Message 2", "Message 3"];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text("TabBar", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
              bottom: const TabBar(tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home',),
                Tab(icon: Icon(Icons.message), text: 'Transit',),
                Tab(icon: Icon(Icons.person), text: 'Bike',),
              ]),
            ),
            body: TabBarView(children: [
              Center(child: Icon(Icons.home, size: 150)),
              Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: messages.map((message) => Text(message, style: TextStyle(
                  fontSize: 20
                ),)).toList(),
              )),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Name: Kushal", style: TextStyle(fontSize: 20),),
                    Text("Age: 20", style: TextStyle(fontSize: 20),),
                    Text("Course: MSC IT", style: TextStyle(fontSize: 20),),
                    Text("Mobile: 1234568795", style: TextStyle(fontSize: 20),),
                  ],
                ),
              )
            ]),
          )
      ),
    );
  }
}