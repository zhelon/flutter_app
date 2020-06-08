

import 'package:flutter/material.dart';

class CountPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    
    return _CountPageState();

  }

}


class _CountPageState extends State<CountPage>{

  final _textStyle = TextStyle(fontSize: 20);

  int _count = 0;
  
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
            Text("Numero de clicks:", style: _textStyle),
            Text("$_count", style: _textStyle),
         ],
       )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: _createButton()
   );

  }



  Widget _createButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
          onPressed:  _reset,
          child: Icon(Icons.exposure_zero)
        ),
        Expanded(child:  SizedBox()),        
        FloatingActionButton(
          onPressed: _rest,
          child: Icon(Icons.remove),
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          onPressed: _add,
          child: Icon(Icons.add)
        )

        
      ],

    );
  
    
  }

  void _reset(){
    setState(() {
      _count = 0;
      print("resset to 0 $_count");              
    });   
  }

   void _rest(){
    setState(() {
      _count--;
      print("rest $_count");              
    });   
  } 

  void _add(){
    setState(() {
      _count++;
      print("add $_count");              
    });   
  }
}