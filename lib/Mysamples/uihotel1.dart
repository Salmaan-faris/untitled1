import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: uihotel(),));
}

class uihotel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Stack(
    children: [
      Container(
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos"
            "/164595/pexels-photo-164595.jpeg?cs=srgb&dl=pexels-pixabay-164595.jpg&fm=jpg"))),
   child: Positioned(top:10,right:20,child: Container(
child: Icon(Icons.heart_broken ),
   ),),
    ),





    ],
  );
  }
}