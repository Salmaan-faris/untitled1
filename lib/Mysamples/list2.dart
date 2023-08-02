import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: list_custom2(),));
}

class list_custom2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return Scaffold(appBar: AppBar(title: Text('list'),centerTitle: true,),
    body:ListView.custom(childrenDelegate: SliverChildListDelegate([
      Card(color: Colors.blueGrey,
        child: ListTile(
          title: Text('name1'),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.call),
        ),
      ),
      Card(  child: ListTile(
        title: Text('name2'),
        leading: Icon(Icons.person),
        trailing: Icon(Icons.call),
      ),
      ),   Card(  child: ListTile(
        title: Text('name3'),
        leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic."
            "com/images?q=tbn:ANd9GcSyuoC0C036xVRRwJlhWQZsQNhb8pCeh0OX1g&usqp=CAU"),),
        trailing: Icon(CupertinoIcons.cube),
      ),
      ),
    ])) ,
  );
  }
}