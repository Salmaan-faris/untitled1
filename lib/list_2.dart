import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: listview(),));
}

class listview extends StatelessWidget {
  var datas=["aa","bb","cc","dd","ee","dd"];
  var colors=[800,700,600,500,400,300,200];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("app"),),
      body: ListView.builder(
        itemCount:datas.length ,
          itemBuilder:(BuildContext contex, index){
            return Container(
              height: 50,
              color: Colors.green[colors[index]],
              child: Center(child: Text(datas[index])),
            );
          }
      ),
    );
  }
}