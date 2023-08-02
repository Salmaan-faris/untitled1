import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Loginpage()));
}

class Loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(title:const Text("Facebook"),backgroundColor: Colors.blueAccent,
   ),
   body: Column(
     children: [
       Padding(
         padding: const EdgeInsets.only(left: 30,right: 30),
         child: Text("facebook login",style: TextStyle(color: Colors.black26,
         fontSize: 50,
         fontWeight: FontWeight.normal,),

 ),
       ),
       Padding(
         padding: const EdgeInsets.only(left: 200,right: 200,top: 20,bottom: 20),
         child: TextField(
           decoration: InputDecoration(
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
             ),labelText:"username",
             prefixIcon: Icon(Icons.account_circle),
             hintText: "username"
           ),

         ),
       ),
       Padding(
         padding: const EdgeInsets.only(left: 200,right: 200,bottom: 20),
         child: TextField(obscureText: true,
           obscuringCharacter: '*',
           decoration: InputDecoration(
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),),
             labelText: "password",
             prefixIcon: Icon(Icons.password),
             suffixIcon: Icon(Icons.remove_red_eye_rounded)

           ),
         ),
       ),
       ElevatedButton(onPressed: (){}, child: Text("login")),
     TextButton(onPressed: (){}, child: Text("forget password?"))

     ],
   ),



 );

  }
}