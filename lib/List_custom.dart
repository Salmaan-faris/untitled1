import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listcustom(),));
}

class Listcustom  extends StatelessWidget{
  var name=["name1","name2","name3","name4","name5","name6",];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: ListView.custom(

      childrenDelegate: SliverChildBuilderDelegate((context ,index) {
        return Card(
          child: Text(name[index]),
        );

      },childCount: name.length,

  )

    ), );
  }
}