import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: gridexplbuilder1(),));
}

class gridexplbuilder1 extends StatelessWidget {
  var datas=['contact','camera','call','message','navigation','alarm',];
  var image=[Icons.account_circle,Icons.camera_alt,Icons.call,Icons.message,
    Icons.navigation,Icons.alarm,];

  var colos=[Colors.lightGreen,Colors.blueGrey,Colors.redAccent,Colors.lightBlueAccent,Colors.yellowAccent,Colors.black12,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('main page'),),
      drawer: Theme(data: Theme.of(context).copyWith(canvasColor: Colors.blueGrey),
        child:Drawer(
          child: ListView(
            children: [UserAccountsDrawerHeader(
                accountName: Text('name'),
                accountEmail: Text('user'),
            currentAccountPicture:CircleAvatar(backgroundImage: AssetImage(''),) ,),

              ListTile(
                leading: Icon(Icons.person),
                title: Text('home'),
              ),
            ],
          ),
        ) ,),

      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2
        ,crossAxisSpacing: 10,mainAxisSpacing: 10,
      ), itemBuilder: (context,index){
        return Card(shadowColor: Colors.blueGrey,
          color:(colos[index] ),

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:50),
                child: Icon(image[index],size: 200,),
              ),
              Text(datas[index],style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
            ],
          ),
        );


        // );
      },itemCount: image.length,),

    );
  }
}