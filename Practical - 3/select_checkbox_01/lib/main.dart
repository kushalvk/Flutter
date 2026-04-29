import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool MSc = false;
  bool BSc = false;
  bool BCA = false;
  bool MCA = false;
  bool Btech = false;
  bool Mtech = false;

  @override
  Widget build(BuildContext context) {
    List<String> selectedCourses = [];

    if (MSc) selectedCourses.add("M SC");
    if (BSc) selectedCourses.add("B SC");
    if (BCA) selectedCourses.add("BCA");
    if (MCA) selectedCourses.add("MCA");
    if (Btech) selectedCourses.add("B Tech");
    if (Mtech) selectedCourses.add("M TEch");

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("Checkbox Demo", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
        ),
        body: Column(
          children: [
            Text("Checkbox Demo"),
            SizedBox(height: 5,),
            CheckboxListTile(
              title: Text("MSc"),
              value: MSc,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (value) {
                setState(() {
                  MSc = value!;
                });
              },
            ),
            SizedBox(height: 5,),
            CheckboxListTile(
              title: Text("BSc"),
              value: BSc,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (value) {
                setState(() {
                  BSc = value!;
                });
              },
            ),
            SizedBox(height: 5,),
            CheckboxListTile(
              title: Text("BCA"),
              value: BCA,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (value) {
                setState(() {
                  BCA = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text("MCA"),
              value: MCA,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (value) {
                setState(() {
                  MCA = value!;
                });
              },
            ),
            SizedBox(height: 5,),
            CheckboxListTile(
              title: Text("B Tech"),
              value: Btech,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (value) {
                setState(() {
                  Btech = value!;
                });
              },
            ),
            SizedBox(height: 5,),
            CheckboxListTile(
              title: Text("M Tech"),
              value: Mtech,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (value) {
                setState(() {
                  Mtech = value!;
                });
              },
            ),
            SizedBox(height: 5,),
            Text("Selected Course: ${selectedCourses.join(", ")}")
          ],
        ),
      ),
    );
  }
}
