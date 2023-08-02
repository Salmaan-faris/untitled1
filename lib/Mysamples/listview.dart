import 'package:flutter/material.dart';
import 'package:untitled1/list_2.dart';

void main(){
  runApp(MaterialApp(home: listview1(),));
}

class listview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('listview'),centerTitle: true,),
     body: ListView(
       children: [
         Card(color: Colors.grey,
             shadowColor: Colors.red,

             child: ListTile(
               leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic."
                   "com/images?q=tbn:ANd9GcSyuoC0C036xVRRwJlhWQZsQNhb8pCeh0OX1g&usqp=CAU"),
               ),title: Text('flutter'),
               subtitle: Text('aabb'),
               trailing: Icon(Icons.call),
             )),
         Card(color: Colors.lightGreen,
             child: ListTile(
               leading: Icon(Icons.account_circle_outlined),
               title: Text('flutter1'),
               subtitle: Text('descryption1'),
               trailing: Icon(Icons.call),
             )),
         Card(color: Colors.blueGrey,
             child: ListTile(
               leading: Icon(Icons.account_circle_outlined),
               title: Text('flutter2'),
               subtitle: Text('descryption2'),
               trailing: Icon(Icons.call),
             )),
         Card(
             child: ListTile(
               leading: Icon(Icons.account_circle_outlined),
               title: Text('flutter3'),
               subtitle: Text('descryption3'),
               trailing: Wrap(
                 children: [
                   Icon(Icons.call),
                   Icon(Icons.dangerous)
                 ],
               ) ,
             ))
       ],


     ),
   );
  }
}