import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Stacks1()));
}

class Stacks1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("welcome to CAMPNOU"),),

    body:Stack(
      children: [

     Center(child: Container(child: Text("BARCELONA" ,style: TextStyle(fontSize: 50,
       color: Colors.black,
     ),),color: Colors.black12,)),

        Positioned(bottom: 100,right: 100,
          child: Container(child: Center(child: Text('AWAY')),
            height: 30,
            width: 100,
            color: Colors.red,
          ),
        ),
      Positioned(bottom: 100,right: 330,
          child: Container(child: Center(child: Text("back ?")),
            height: 30,

            width: 100,
            color: Colors.red,
          ),
        ),   Positioned(bottom: 100,
          left: 100,
          child: Container(child: Center(child: Text('HOME')),
            height:30,
            width: 100,
            color: Colors.red,
          ),
        // ),Positioned(
        //   child: Container(
        //     child: Text("BARCELONA"),
        //     height: 100,
        //     width: 200,
        //   ),
         )
      ],
    )

  );
  }
}