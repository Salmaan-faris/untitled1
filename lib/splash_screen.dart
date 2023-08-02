

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Splashscreen(),));

}

class Splashscreen  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(backgroundColor: Colors.lightBlueAccent,),
     body: Container(
       decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomLeft,
           colors: [
         Colors.lightGreen,
         Colors.white10,
         Colors.lightBlue.shade50,
         Colors.deepOrange.shade50
       ])),
       //decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1483232539664"
      // "-d89822fb5d3e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG8lMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),fit: BoxFit.cover)),
       //color: Colors.black26,
       child: Center(
         child: Column(mainAxisAlignment: MainAxisAlignment.center,
           children:  [
           //  Icon(Icons.ac_unit_rounded,size: 50,color: Colors.cyan, ),
             //Image(image: AssetImage('assets/image/Iconimage.png'),),
             Image.asset('assets/image/Iconimage.png' ,height: 100,),
             Text("My app",style: TextStyle(
               fontSize: 30,fontWeight: FontWeight.bold,
             ),),

           ],
         ),
       ),
     )
   );

  }
}