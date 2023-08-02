import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:  Grid(),));
}

class  Grid extends StatelessWidget{
 // var name=["name1","name2","name3","name4","name5","name6",];


  @override
  Widget build(BuildContext context) {
 return Scaffold(appBar: AppBar(),
   body: GridView(

     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

     crossAxisCount: 2,
     crossAxisSpacing: 30,
     mainAxisSpacing: 30,


   ),
   children: [Card(
     color: Colors.black12,
     child: Column(
       children: [
         Padding(
           padding: const EdgeInsets.all(20),
           child: Center(child: Icon(Icons.home_filled,size: 200,),
           ),
         ),Text("home"),
       ],
     ),
   ),
     Card(
       color: Colors.black12,
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(20),
             child: Center(child: Icon(Icons.call,size: 200,),
             ),
           ),Text("call"),
         ],
       ),
     ),   Card(
       color: Colors.black12,
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(20),
             child: Center(child: Icon(Icons.message,size: 200,),
             ),
           ),Text("message"),
         ],
       ),
     ),   Card(
       color: Colors.black12,
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(20),
             child: Center(child: Icon(Icons.camera_alt,size: 200,),
             ),
           ),Text("camera"),
         ],
       ),
     ),   Card(
       color: Colors.black12,
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(20),
             child: Center(child: Icon(Icons.music_video_sharp,size: 200,),
             ),
           ),Text("music"),
         ],
       ),
     ),   Card(
       color: Colors.black12,
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(20),
             child: Center(child: Icon(Icons.navigation,size: 200,),
             ),
           ),Text("navigation"),
         ],
       ),
     ),
     // Image(image: AssetImage("assets/image/images.png")),
     // Image(image: AssetImage("assets/image/images.png")),
     // Image(image: AssetImage("assets/image/images.png")),
     // Image(image: AssetImage("assets/image/images.png")),
     // Image(image: AssetImage("assets/image/images.png")),
     // Image(image: AssetImage("assets/image/images.png")),

   ],
   ),
 );
  }
}