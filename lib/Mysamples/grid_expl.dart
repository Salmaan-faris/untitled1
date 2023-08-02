import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: grid_expl(),));
}

class grid_expl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(title: Text('home page',),centerTitle: true,),
     body:GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 3,
     mainAxisSpacing: 20,
     crossAxisSpacing: 20),
       children: [
         Card(
           color: Colors.blueGrey,
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(25),
                 child: Icon(Icons.contact_phone,size: 100,),
               ),Text('contact'),
             ],
           ),
           
         ),  Card(
           color: Colors.blueGrey[100],
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(25),
                 child: Icon(Icons.call,size: 100,),
               ),Text('call'),
             ],
           ),

         ),  Card(
           color: Colors.blueGrey[900],
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(25),
                 child: Icon(Icons.message,size: 100,),
               ),
               Text('message'),
             ],
           ),

         ),  Card(
           color: Colors.blueGrey,
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(25),
                 child: Icon(Icons.home,size: 100,),
               ),Text('home'),
             ],
           ),

         ),  Card(
           color: Colors.blueGrey,
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(25),
                 child: Icon(Icons.navigation,size: 100,),
               ),Text('map'),
             ],
           ),

         ),  Card(
           color: Colors.blueGrey,
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(25),
                 child: Icon(Icons.camera_alt,size: 100,),
               ),Text('camera'),
             ],
           ),

         ),


     ],) ,
     
   );
  }
}