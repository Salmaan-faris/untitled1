import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: list_custom(),));
}

class list_custom extends StatelessWidget {
  var name=['aa','bb','cc'];
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index){
     return Card(
       child: Text(name[index]),
     );
   },childCount: name.length,
   )),
 );
  }
}