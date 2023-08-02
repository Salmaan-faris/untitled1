import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Stacks(),));
}

class Stacks  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Stack(
children: [
       Positioned(left: 100,
         
         child: Container(
    width: 200,
    height: 100,
           color: Colors.cyan,
   
  ),
       ), 
  Container(
    width: 50,
    height: 50,

    color: Colors.blueGrey,
  ),
   Container(
    width: 150,
    height: 400,

    color: Colors.black12,
  ),

],
       ),
     ),
   );
  }
}