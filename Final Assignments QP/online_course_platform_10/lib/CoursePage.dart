import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Browse Available Courses", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Browse Available Courses", style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Icon(Icons.book, size: 50,)
          ],
        ),
      ),
    );
  }
}
