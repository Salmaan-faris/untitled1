import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: drawerr(),));
}

class drawerr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold (
     appBar: AppBar(title: Text('app'),),
     drawer:

     Theme(data:Theme.of(context).copyWith(canvasColor: Colors.blueGrey),
       child:
     Drawer(
       child:   ListView(
         children: [
           UserAccountsDrawerHeader(
               accountName: Text("salmaan"),
               accountEmail: Text("salmanfaris@gmail.com"),
             currentAccountPicture:
              GestureDetector(onTap: (){
                print('welcome');
              },
                child: CircleAvatar(backgroundImage: AssetImage("assets/image/Iconimage.png"),
             ),
              ) ,
           decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic'
               '.com/images?q=tbn:ANd9GcQwbTZY7TqOie2PME33SS0X0uYm2FSU7igxZlL6U9J8-g&s'),fit: BoxFit.fill)),
           otherAccountsPictures: [
             CircleAvatar(backgroundImage: AssetImage('assets/image/images.png'),),
             CircleAvatar(backgroundImage: AssetImage('assets/image/bagblue.png'),)
           ],),

           ListTile(
             trailing:Icon(Icons.home) ,
             title: Text('home'),
             leading: Icon(Icons.directions),

           ),
           ListTile(
             trailing:Icon(Icons.home_repair_service) ,
             title: Text('service'),
             leading: Icon(Icons.directions),

           ),
           ListTile(
             trailing:Icon(Icons.settings) ,
             title: Text('settings'),
             leading: Icon(Icons.arrow_circle_left_sharp),

           ),
           ListTile(
             trailing:Icon(Icons.help) ,
             title: Text('help'),
             leading: Icon(Icons.directions),

           ),
         ],
       ) ,
     )
     ),
   );
  }
}