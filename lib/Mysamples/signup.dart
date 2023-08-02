import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Mysamples/listview.dart';
import 'package:untitled1/list_page.dart';

void main(){
  runApp(MaterialApp(home: Signup_page()));
}

class Signup_page extends StatefulWidget{
  @override
  State<Signup_page> createState() => Signup_pageState();
}

class Signup_pageState extends State<Signup_page> {
  final formkey=GlobalKey<FormState>();
  final TextEditingController _pass=TextEditingController();
  final TextEditingController _confirmpass=TextEditingController();


  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("SIGNUP"),centerTitle: true,backgroundColor: Colors.blueAccent,
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Text("facebook",style: TextStyle(color: Colors.black26,
                fontSize: 50,
                fontWeight: FontWeight.normal,),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200,right: 200,top: 20,bottom: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),labelText:"username",
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: "username"
                ),textInputAction: TextInputAction.next,
                validator:(username){
                  if(username==null){
                    return "enter username";
                  }
                } ,

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200,right: 200,bottom: 20),
              child: TextFormField(
                controller: _pass,
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),),
                    labelText: "password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(onPressed:(){
                      setState(() {
                        if(showpass){
                          showpass=false;
                        }else{
                          showpass=true;
                        }
                      });

                    } ,icon:Icon(showpass==true? Icons.visibility_off:Icons.visibility),)

                ),textInputAction: TextInputAction.next,
                validator: (password){
                  if(password!.isEmpty||password.length<6){
                    return "enter password";

                  }
                },

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200,right: 200,bottom: 20),
              child: TextFormField( controller: _confirmpass,
                validator: (val){
                if (val!.isEmpty)
                  return 'empty';
                if (val!=_pass.text)
                  return'not match';
                return null;

                },
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),labelText: 'confirm password'
                ,suffixIcon: Icon(Icons.password),
                ),


              ),
            ),  Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                final valid=formkey.currentState!.validate();
                if(valid){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>listview1(),),
                  );
                }

              }, child: Text("login")),
            ),

            TextButton(onPressed: (){}, child: Text("click here"))

          ],
        ),
      ),



    );

  }
}