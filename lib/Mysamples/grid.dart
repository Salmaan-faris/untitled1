import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(home: grid(),));
}

class grid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:GridView(
       gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
       mainAxisSpacing: 20,
       crossAxisSpacing: 20)
       ),children: [
         Card(child: Column(
           children: [Icon(Icons.account_circle_outlined)],
         ),),
     ],
     ) ,
   );
  }
}