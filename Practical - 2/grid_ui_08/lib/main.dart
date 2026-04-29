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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("UI Design", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(),
                    bottom: BorderSide(),
                    left: BorderSide(),
                    right: BorderSide(),
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: 350,
                        decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(),
                              bottom: BorderSide(),
                              left: BorderSide(),
                              right: BorderSide(),
                            )
                        ),
                        child: Center(
                          child: Text("Title", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Expanded(
                      child: Container(
                        width: 350,
                        decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(),
                              bottom: BorderSide(),
                              left: BorderSide(),
                              right: BorderSide(),
                            )
                        ),
                        child: Center(
                          child: Text("Hello, I'm VK. I'm Preparing Flutter UI.", style: TextStyle(
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Expanded(
                      child: Container(
                        width: 350,
                        decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(),
                              bottom: BorderSide(),
                              left: BorderSide(),
                              right: BorderSide(),
                            )
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.favorite,
                              ),
                              SizedBox(width: 2,),
                              Icon(
                                Icons.favorite,
                              ),
                              SizedBox(width: 2,),
                              Icon(
                                Icons.favorite,
                              ),
                              SizedBox(width: 2,),
                              Icon(
                                Icons.favorite,
                              ),
                              SizedBox(width: 2,),
                              Icon(
                                Icons.favorite,
                              ),
                              SizedBox(width: 30,),
                              Text("Hello From VK :)", style: TextStyle(
                                  fontSize: 20
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Expanded(
                      child: Container(
                        width: 350,
                        decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(),
                              bottom: BorderSide(),
                              left: BorderSide(),
                              right: BorderSide(),
                            )
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                      Icons.ice_skating
                                  ),
                                  SizedBox(height: 2,),
                                  Text("Icons", style: TextStyle(
                                      fontSize: 10
                                  ),),
                                  SizedBox(height: 2,),
                                  Text("1. First", style: TextStyle(
                                      fontSize: 10
                                  ),),
                                ],
                              ),
                              SizedBox(width: 35,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                      Icons.ice_skating
                                  ),
                                  SizedBox(height: 2,),
                                  Text("Icons", style: TextStyle(
                                      fontSize: 10
                                  ),),
                                  SizedBox(height: 2,),
                                  Text("2. Second", style: TextStyle(
                                    fontSize: 10,
                                  ),),
                                ],
                              ),
                              SizedBox(width: 35,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                      Icons.ice_skating
                                  ),
                                  SizedBox(height: 2,),
                                  Text("Icons", style: TextStyle(
                                      fontSize: 10
                                  ),),
                                  SizedBox(height: 2,),
                                  Text("3. Third", style: TextStyle(
                                      fontSize: 10
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 10,),
            Image.asset('assets/images/nature.jpg', height: 700, width: 700,),
          ],
        ),
      ),
    );
  }
}
