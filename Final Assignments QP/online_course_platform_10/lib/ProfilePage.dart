import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("User Profile Details", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("User Profile Details", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Icon(Icons.person, size: 50,)
          ],
        ),
      ),
    );
  }
}
