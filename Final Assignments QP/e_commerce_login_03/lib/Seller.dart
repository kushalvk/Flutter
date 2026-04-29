import 'package:e_commerce_login_03/main.dart';
import 'package:flutter/material.dart';

class Seller extends StatefulWidget {
  const Seller({super.key});

  @override
  State<Seller> createState() => _SellerState();
}

class _SellerState extends State<Seller> {

  void logout () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyHomePage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text("Welcome Seller", style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome Seller", style: TextStyle(
              fontSize: 20,
            ),),
            SizedBox(height: 10,),
            Icon(Icons.store, size: 50,),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: logout, child: Text("Logout"))
          ],
        ),
      ),
    );
  }
}
