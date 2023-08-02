import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:   demo1(),));
}

 class demo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('demo'),),
     body: Text('my app'),
   );
  }
}