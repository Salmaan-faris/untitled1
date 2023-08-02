import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Mysamples/grid.dart';
import 'package:untitled1/Mysamples/list.dart';
import 'package:untitled1/Mysamples/list2.dart';
import 'package:untitled1/Mysamples/listview.dart';

void main(){
  runApp(MaterialApp(home: whatsappui(),));
}

class whatsappui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(length: 3,
     child: Scaffold(
       appBar: AppBar(
         title: Text('my tab bar'),
         backgroundColor: Colors.green,
         actions: [
           Icon(Icons.account_circle),
           SizedBox(width: 10,),
           Icon(Icons.search),
           PopupMenuButton(itemBuilder: (context){
             return [
               PopupMenuItem(child: Text('about'),),
             ];
           })
         ],
         bottom: TabBar(unselectedLabelColor: Colors.white,
           tabs: [
             Tab(icon: Icon(Icons.account_circle),),
             Tab(text: 'call',),
             Tab(text: 'home',)
           ],),
       ),
       body: TabBarView(children: [

         listview1(),
         list_custom(),
         grid(),

       ],),


     ),
   );

  }
}