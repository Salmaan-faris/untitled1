import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(home: expanded(),));
}

class expanded  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: Row(
     children: [
       Container(
         padding: EdgeInsets.all(20),
         color: Colors.lightBlueAccent,
         
       ),
       Expanded(child: Container(
         color: Colors.lightGreen,
       ),
       ),   Container(color: Colors.blueGrey,
         padding: EdgeInsets.all(30),
         child: Text('hii'),
       ),
     ],
   ),
 );
  }

}