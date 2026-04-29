import 'package:flutter/material.dart';

class Buyer extends StatelessWidget {
  const Buyer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Welcome Buyer", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome Buyer", style: TextStyle(
              fontSize: 25
            ),),
            SizedBox(height: 10,),
            Icon(Icons.add_shopping_cart, size: 50,)
          ],
        ),
      ),
    );
  }
}
