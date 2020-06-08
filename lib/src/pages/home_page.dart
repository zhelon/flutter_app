import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final textStyle = TextStyle(fontSize: 20);

  final count = 0;

  @override
  Widget build(BuildContext context) {

   return Scaffold(
     appBar: AppBar(
       title: Text("Titutlo"),
       centerTitle: true,
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
            Text("Numero de clicks:", style: textStyle),
            Text("$count", style: textStyle),
         ],
       )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("Hola mundo");
        },
        child: Icon(Icons.add),
        ),
   );

  }

}