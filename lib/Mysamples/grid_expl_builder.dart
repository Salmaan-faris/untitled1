import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: gridexplbuilder(),));
}

class gridexplbuilder extends StatelessWidget {
  var datas=['contact','camera','call','message','navigation','alarm','Email','print',
    'book','music','Backup','Wallet',];
  var image=[Icons.account_circle,Icons.camera_alt,Icons.call,Icons.message,
  Icons.navigation,Icons.alarm,Icons.email,Icons.print,Icons.book,
    Icons.music_note,Icons.backup,Icons.wallet,];

  var colos=[Colors.lightGreen,Colors.blueGrey,Colors.redAccent,Colors.lightBlueAccent,Colors.yellowAccent,Colors.black12,
    Colors.yellow,Colors.purple,Colors.orange,Colors.brown,Colors.blue[900],Colors.lightGreen,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('main page'),),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3
          ,crossAxisSpacing: 10,mainAxisSpacing: 10,
      ), itemBuilder: (context,index){
        return Card(shadowColor: Colors.blueGrey,
          color:(colos[index] ),

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:50),
                child: Icon(image[index],size: 60,),
              ),
              Text(datas[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ],
          ),
          );


        // );
      },itemCount: image.length,),

    );
  }
}