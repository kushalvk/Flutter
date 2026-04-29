import 'package:flutter/material.dart';

class Concerts extends StatefulWidget {
  final String eventName;
  final String date;
  final String value;
  const Concerts({super.key, required this.eventName, required this.date, required this.value});

  @override
  State<Concerts> createState() => _ConcertsState();
}

class _ConcertsState extends State<Concerts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Concerts", style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Column(
        children: [
          Text("Event Name: ${widget.eventName}"),
          SizedBox(height: 10,),
          Text("Event Name: ${widget.date}"),
          SizedBox(height: 10,),
          Text("Event Name: ${widget.value}"),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
