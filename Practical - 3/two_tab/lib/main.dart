import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home:TabDemo()));

class TabDemo extends StatelessWidget{

  Widget img()=>Image.network("https://picsum.photos/100");

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length:2,
      child:Scaffold(
        appBar:AppBar(
          title:Text("Tabs"),
          bottom:TabBar(tabs:[
            Tab(text:"Row"),
            Tab(text:"Column")
          ]),
        ),
        body:TabBarView(
          children:[

            Container(
              color:Colors.blue[100],
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:[img(),img(),img()],
              ),
            ),

            Container(
              color:Colors.green[100],
              child:Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[img(),img(),img()],
              ),
            )
          ],
        ),
      ),
    );
  }
}