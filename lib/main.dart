

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(
     title: Text("My app"),


   ),
   body: Center(
     child: Container(child: Column(children: [
       TextField(),

     ElevatedButton(onPressed: (){}, child:Padding(
       padding: const EdgeInsets.all(10),
       child: Text("login",style:TextStyle(color:Colors.red),),

     ) ),
       Padding(
         padding: const EdgeInsets.only(top:12,bottom:23),
         child: TextButton(onPressed: (){}, child: Center(child: Text("click here"))),
       ),

     ],)


     ),
   )
   );
  }
}