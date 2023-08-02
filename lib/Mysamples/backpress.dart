import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: backpress(),));
}

class backpress extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future<bool> showAert()async{
      return await showDialog(context: context, builder: (context)=>AlertDialog(
        title:Text("Exit") ,
        content:Text("do you want to exit"),
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop(false);
          }, child: Text("No")),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop(true);
          }, child: Text("Yes")),
        ],
      ));
    }
  return WillPopScope(child: Scaffold(
    appBar: AppBar(title: Text("alert"),),
    body: Text(""),

  ), onWillPop:showAert );
  }

}