
import 'package:flutter/material.dart';

import 'package:untitled1/Mysamples/uinewlist2.dart';
void main(){
  runApp(MaterialApp(home: category1(),));
}
class category1 extends StatelessWidget{
  var datas=['Politics','Sports','Science','Technology','Travel','Weather',];


  var colos=[Colors.lightGreen,Colors.blueGrey,
    Colors.redAccent,Colors.lightBlueAccent,Colors.yellowAccent,Colors.black12,];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
    mainAxisSpacing: 40,
    crossAxisSpacing: 40),
        itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Card(color: colos[index],

         child: Column(
           children: [ Padding(
             padding: const EdgeInsets.only(right: 180,top: 60),
             child: CircleAvatar(backgroundColor: Colors.white,
               radius: 50,
             ),
           ),
             Padding(
               padding: const EdgeInsets.only(top:150,
               right:200),
               child:TextButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context){
                   return newslist();
                 }));
               }, child:  Text(datas[index],style: TextStyle(
                   fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black54,),
               ),)
             ),


           ],
         ),
        ),
      );

        },itemCount: datas.length,
    );
  }

}