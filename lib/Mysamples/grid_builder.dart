import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(home: grid_builder(),));
// }

class grid_builder extends StatelessWidget {
  var image=["assets/image/Iconimage.png","assets/image/Iconimage.png","assets/image/Iconimage.png","assets/image/Iconimage.png",];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context,index){
      return Card(
      child: Image.asset(image[index]),
      );
        },itemCount: image.length,)
  );
  }

}