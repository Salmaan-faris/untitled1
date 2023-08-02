import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listpage(),));
}
class Listpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("FOOTWEAR"),centerTitle: true,),
    body:ListView(
      children: [
        Card(
          child: ListTile(title: Text("model1"),
          subtitle: Text("description"),
          leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic."
              "com/images?q=tbn:ANd9GcSyuoC0C036xVRRwJlhWQZsQNhb8pCeh0OX1g&usqp=CAU"),),
          trailing: Wrap(children: [
            Icon(Icons.directions),
            Icon((Icons.call))
          ]),
            //trailing:Icon(Icons.call) ,
          ),
        ),
        
        Card(
          child: ListTile(title: Text("model2"),
            subtitle: Text("description"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic."
                "com/images?q=tbn:ANd9GcSyuoC0C036xVRRwJlhWQZsQNhb8pCeh0OX1g&usqp=CAU"),),
            trailing: Wrap(children: [
              Icon(Icons.directions),
              Icon((Icons.call))
            ]),),
        ),
        Card(
          child: ListTile(title: Text("model3"),
            subtitle: Text("description"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic."
                "com/images?q=tbn:ANd9GcSyuoC0C036xVRRwJlhWQZsQNhb8pCeh0OX1g&usqp=CAU"),),
            trailing: Wrap(children: [
              Icon(Icons.directions),
              Icon((Icons.call))
            ]),
          ),
        ),
        Card(shadowColor: Colors.red,
          child: ListTile(title: Text("model4"),
            subtitle: Text("description"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic."
                "com/images?q=tbn:ANd9GcSyuoC0C036xVRRwJlhWQZsQNhb8pCeh0OX1g&usqp=CAU"),),
            trailing: Wrap(children: [
              Icon(Icons.directions),
              Icon((Icons.call))
            ]),
          ),
        ),


      ],
    ),
  );
  }

}