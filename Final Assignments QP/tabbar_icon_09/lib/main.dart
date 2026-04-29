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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabbar With Icon", style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.home), text: "Home",),
              Tab(icon: Icon(Icons.search), text: "Search",),
              Tab(icon: Icon(Icons.notifications_active), text: "Notification",),
              Tab(icon: Icon(Icons.person), text: "Profile",),
            ]),
          ),
          body: TabBarView(children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Home"),
                  SizedBox(height: 10,),
                  Icon(Icons.home)
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Search"),
                  SizedBox(height: 10,),
                  Icon(Icons.search)
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Notification"),
                  SizedBox(height: 10,),
                  Icon(Icons.notifications_active)
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Profile"),
                  SizedBox(height: 10,),
                  Icon(Icons.person)
                ],
              ),
            ),
          ]),
        )
    );
  }
}
