import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: mylist(),));
}

class mylist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(title: Text('Group'),centerTitle: true,),
     body:ListView(
       children: [
         //SizedBox(height: 20,child: Text("data"),),
         Container(height: 40,
         child: Text('Android',style: TextStyle(fontSize: 20),),
       ),
         Card(shadowColor: Colors.black,
           child:ListTile(
             title: Text('Android Tutorial',style: TextStyle(fontSize: 15),),
             subtitle:Column(
               children: [Row(
                 children: [
                   Icon(Icons.account_circle),
                   Text('person'),
                 ],
               ),
                 Row(
                 children: [ Icon(Icons.pageview),
                   Text('details'),],
               )],
             ),
             leading:Positioned(left: 5,top: 5,bottom: 5,
               child: Container(height: 50,width: 50,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(6)
                ),

               ),
             ),


           ) ,
         ),
         Container(color: Colors.white10,
           height: 40,
           child: Text('Flutter',style: TextStyle(fontSize: 20),),),
         Card(shadowColor: Colors.cyan,
           child:ListTile(
             title: Text('Flutter Tutorial',style: TextStyle(fontSize: 15),),
             subtitle:Column(
               children: [Row(
                 children: [
                   Icon(Icons.account_circle),
                   Text('person'),],
               ),  Row(
                 children: [ Icon(Icons.pageview),
                   Text('details'),],
               )
               ],
             ),
             leading:Positioned(left: 5,top: 5,bottom: 5,
               child: Container(height: 50,width: 50,
                 decoration: BoxDecoration(
                     color: Colors.green,
                     borderRadius: BorderRadius.circular(6)
                 ),

               ),
             ),


           ) ,),
         Container(color: Colors.white70,
           height: 40,
           child: Text('IOS',style: TextStyle(fontSize: 20),),),

         Card(shadowColor: Colors.cyan,
           child:ListTile(
             title: Text('IOS Tutorial',style: TextStyle(fontSize: 15),),
             subtitle:Column(
               children: [Row(
                 children: [
                 Icon(Icons.account_circle),
                 Text('person'),],
               ),
                 Row(
                 children: [ Icon(Icons.pageview),
                   Text('details'),],
               )],
             ),
             leading:Positioned(left: 5,top: 5,bottom: 5,
               child: Container(height: 50,width: 50,
                 decoration: BoxDecoration(
                     color: Colors.lightBlueAccent,
                     borderRadius: BorderRadius.circular(6)
                 ),

               ),
             ),


           ) ,),
         Container(color: Colors.white70,height: 40,
           child: Text('Java',style: TextStyle(fontSize: 20),),),
       Card(shadowColor: Colors.cyan,
         child:ListTile(
           title: Text('java Tutorial',style: TextStyle(fontSize: 15),),
           subtitle:Column(
             children: [Row(
               children: [
                 Icon(Icons.account_circle),
                 Text('person'),],
             ), Row(
               children: [ Icon(Icons.pageview),
                 Text('details'),],
             )],
           ),
           leading:Positioned(left: 5,top: 5,bottom: 5,
             child: Container(height: 50,width: 50,
               decoration: BoxDecoration(
                   color: Colors.redAccent,
                   borderRadius: BorderRadius.circular(6)
               ),

             ),
           ),


         ) ,),
         Container(height: 40,
           child: Text('Python',style: TextStyle(fontSize: 20),),
         ),
         Card(shadowColor: Colors.cyan,
           child:ListTile(
             title: Text('Python Tutorial',style: TextStyle(fontSize: 15),),
             subtitle:Column(
               children: [Row(
                 children: [
                   Icon(Icons.account_circle),
                   Text('person'),],
               ), Row(
                 children: [ Icon(Icons.pageview),
                   Text('details'),],
               )],
             ),
             leading:Positioned(left: 5,top: 5,bottom: 5,
               child: Container(height: 50,width: 50,
                 decoration: BoxDecoration(
                     color: Colors.pinkAccent,
                     borderRadius: BorderRadius.circular(6)
                 ),


               ),
             ),


           ) ,
         ),  Container(height: 40,
           child: Text('React',style: TextStyle(fontSize: 20),),
         ),
         Card(shadowColor: Colors.cyan,
           child:ListTile(
             title: Text('React Tutorial',style: TextStyle(fontSize: 15),),
             subtitle:Column(
               children: [Row(
                 children: [
                   Icon(Icons.account_circle),
                   Text('person'),],
               ), Row(
                 children: [ Icon(Icons.pageview),
                   Text('details'),],
               )],
             ),
             leading:Positioned(left: 5,top: 5,bottom: 5,
               child: Container(height: 50,width: 50,
                 decoration: BoxDecoration(
                     color: Colors.yellow[200],
                     borderRadius: BorderRadius.circular(6)
                 ),


               ),
             ),


           ) ,
         ),
       ],
     ) ,
   );
  }
}