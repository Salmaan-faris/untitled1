import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridbuilder(),));
}

class Gridbuilder  extends StatelessWidget{
  var image=["assets/image/images.png","assets/image/Iconimage.png","assets/image/images.png"
    ,"assets/image/Iconimage.png","assets/image/images.png","assets/image/Iconimage.png",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context,index){
        return Card(shadowColor: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Image.asset(image[index],),
          ),


        );

          },itemCount: image.length,) ,

    );
  }
}