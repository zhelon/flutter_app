
import 'package:flutter/material.dart';
import 'package:flutter_app/src/pages/count_page.dart';

class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: CountPage(),
      )
      
      
    );
    
  }



}