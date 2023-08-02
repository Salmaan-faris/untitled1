

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled1/login.dart';


void main(){
  runApp(MaterialApp(home: page(),));
}
class page extends StatefulWidget {

  @override
  State<StatefulWidget> createState() =>pagestate();


}
class pagestate extends State<page>{
  @override
  void inistate(){
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage())
      );


    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1483232539664-d89822fb5d3e?ixlib=rb-4.0.3&"
            "ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG8lMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),fit: BoxFit.cover)),

        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(child: Text("hello",style: TextStyle(color: Colors.cyanAccent),)),
        )
      ),
    );

  }

}

