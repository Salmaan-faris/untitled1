import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridextend(),));
}

class Gridextend extends StatelessWidget{
  var image=["assets/image/images.png","assets/image/Iconimage.png","assets/image/images.png"
    ,"assets/image/Iconimage.png","assets/image/images.png","assets/image/Iconimage.png",];

  @override
  Widget build(BuildContext context) {
  return Scaffold(

    body: GridView.extent(maxCrossAxisExtent: 200,
    children: List.generate(50, (index) {
      return Card(
        child: Text('hii'),



      );
    })),
  );
  }
}