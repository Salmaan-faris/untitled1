import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: gridcount(),));
}

class gridcount extends StatelessWidget{
  var image=["assets/image/images.png","assets/image/Iconimage.png","assets/image/images.png"
    ,"assets/image/Iconimage.png","assets/image/images.png","assets/image/Iconimage.png",];
  var colores=[Colors.red,Colors.lightGreen,Colors.grey,Colors.blueGrey,
    Colors.yellow,Colors.orange,];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.count(crossAxisCount: 3,
      mainAxisSpacing:20 ,
    crossAxisSpacing: 20,
      children: List.generate(6, (index){
        return Card(color: colores[index] ,
          child: Image(image:AssetImage(image[index]),),
        );
      })

      ,),
  );
  }
}