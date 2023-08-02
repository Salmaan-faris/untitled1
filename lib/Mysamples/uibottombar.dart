import 'package:flutter/material.dart';
import 'package:untitled1/Mysamples/grid.dart';
import 'package:untitled1/Mysamples/list2.dart';
import 'package:untitled1/list_3.dart';

void main (){
  runApp(MaterialApp(home: uihomepage(),));
}

class uihomepage extends StatefulWidget{
  @override
  State<uihomepage> createState() => _uihomepageState();
}

class _uihomepageState extends State<uihomepage> {
  int selectedindex=0;
  List bodys =[
    listview(),
    list_custom2(),
    grid(),
    listview()
    // Card(child: Text("account"),),
    // Card(child: Text("search"),),
    // Card(child: Text("settings"),),
    // Card(child: Text("Home"),)
  ];
  void itemshow (int index){
    setState(() {
      selectedindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('bottomBar'),),
     bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.blueGrey,
       selectedItemColor: Colors.lightGreen[50],
       unselectedItemColor: Colors.grey,
       type: BottomNavigationBarType.fixed
       ,items: [
       BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "account"),
       BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
       BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),
       BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
     ],

currentIndex: selectedindex,
       onTap: itemshow,
     ),
     body: bodys.elementAt(selectedindex),

   );
  }
}