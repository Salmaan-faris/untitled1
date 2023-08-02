import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: listview(),));
}

class listview extends StatelessWidget {
  var datas=["aa","bb","cc","dd","ee","dd"];
  var images=["assets/image/images.png","assets/image/images.png","assets/image/images.png",
    "assets/image/images.png","assets/image/images.png","assets/image/images.png"];
  var colors=[800,700,600,500,400,300,200];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("app"),),
      body: ListView.separated(
          itemCount:datas.length ,
          itemBuilder:(BuildContext contex, index){
            return Container(
              height: 50,
              color: Colors.green[colors[index]],
              child: Image(image: AssetImage(images[index]),),
            );
          }, separatorBuilder: (BuildContext context, int index) {
            return Divider(
              thickness: 6,
              color: Colors.cyan,
            );
      },
      ),
    );
  }
}