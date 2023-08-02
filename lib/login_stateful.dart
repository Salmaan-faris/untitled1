import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/list_page.dart';
import 'package:untitled1/splash_screen.dart';

void main(){
  runApp(MaterialApp(home: login(),));

}


class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>loginstate() ;


}
class loginstate extends State<login> {
  //final formkey= GlobalKey<FormState>();
  bool shawpas=true;
  @override
  Widget build(BuildContext context) {

   return Scaffold(
     body: Form(
       //key: formkey,
       child: ListView(
       children: [
         Center(child: Padding(
           padding: const EdgeInsets.only(top: 20,bottom: 20),
           child: Text("login page",style: TextStyle(color: Colors.blueAccent,fontSize: 20,fontWeight: FontWeight.w100),),
         )),
         Padding(
           padding: const EdgeInsets.only(left: 200,right: 200,top: 20,bottom: 20),
           child: TextFormField(
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10),

               ),labelText: "username",
               hintText: "username",
               prefixIcon: Icon(Icons.account_circle_outlined),
             ),
             textInputAction: TextInputAction.next,
             validator: (username){
               if(username==null||username.isEmpty){
                 return "enter valid username";
               }
                 if (!RegExp(r'\S+@\S+\.\S+').hasMatch(username)){
                   return "please enter valid username";
                 }
                 return null;
             },
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 200,right: 200,top: 20,
           bottom: 20),
           child: TextFormField(
             obscureText: shawpas,
             obscuringCharacter: "*",
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10),

               ),labelText: "password",
               hintText: "password",
               prefixIcon: Icon(Icons.password),
               suffixIcon: IconButton(onPressed: () {
                 setState(() {
                   if(shawpas){
                     shawpas==false;
                   }else{
                     shawpas==true;
                   }
                 });

               },
                 icon:Icon(shawpas==true ? Icons.visibility_off : Icons.visibility),)
               //suffixIcon: Icon(Icons.remove_red_eye_outlined)
             ),
             textInputAction: TextInputAction.done,
             validator: (password){
               if(password!.isEmpty||password.length<6){
                 return "enter valid password";
               }else{
                 return null;
               }
             },
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 300,right: 300),
           child: ElevatedButton(onPressed: (){
             //final valid=formkey.currentState!.validate();
            // if(valid){
             //  Navigator.push(context, MaterialPageRoute(builder:(context)=>Listpage(),),
            //   );
           //  }
           }, child: Text("login")),
         ),
         TextButton(onPressed: (){}, child: Text("forgot password ?")),
       ],
     ),),
   );

  }
}
