import 'package:e_commerce_login_03/Buyer.dart';
import 'package:e_commerce_login_03/Seller.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  final String Username;
  const Welcome({super.key, required this.Username});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  void BuyerClick() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Buyer())
    );
  }

  void SellerClick() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Seller())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Welcome Page", style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello ${widget.Username} 😊"),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: BuyerClick, child: Text("Buyer")),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: SellerClick, child: Text("Seller"))
              ],
            )
          ],
        ),
      ),

    );
  }
}
