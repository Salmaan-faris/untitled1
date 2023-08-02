import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(home: Gridcustom(),));
}

class Gridcustom  extends StatelessWidget{
  var image=["assets/image/images.png","assets/image/Iconimage.png","assets/image/images.png"
    ,"assets/image/Iconimage.png","assets/image/images.png","assets/image/Iconimage.png",];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
         childrenDelegate:SliverChildBuilderDelegate((context,index){
       return Container(
         child: ListView(
           children: [
             Image(image: AssetImage(image[index]))
           ],
         ),
       );
         },childCount: image.length),
     ),);
  }
}