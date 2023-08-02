import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: stack(),));
}

class stack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      children: [
        Container(color: Colors.black,
          height: double.infinity,
          width: double.infinity,
        ),
        Positioned(left: 100,
          top: 200,
          child: Container(
          height:600,
          width:300 ,

          color: Colors.blueGrey,
        ),
        ),Positioned
          (left: 200,
            top: 300,
            child: Container(
          color: Colors.lightGreen,
          height: 200,
          width: 150,
          child: Positioned(left: 200,
            top: 200,
            child: Container(
            color: Colors.orange,
            height: 100,
            width: 50,
          ),
          ),

        ))
      ],
    ),
  );
  }
}