
import 'package:flutter/material.dart';

void main (){
runApp(MaterialApp(home: containers(),));
}
class containers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       width: double.infinity,
       height: double.infinity,
     ),
   );
  }

}