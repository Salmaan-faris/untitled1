import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: profileui(),));
}

class profileui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [ Container(
            child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
                IconButton(onPressed: (){}, icon: Icon(Icons.menu),alignment: Alignment.topRight,)
              ],

            ) ,
          ),
            SizedBox(height: 15,),
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://tse2.explicit.bing."
                        "net/th?id=OIP.jKHBRVWDytTl9XLqRRQ7kAAAAA&pid=Api&P=0&h=180"),
                  ),

                  borderRadius: BorderRadius.circular(100),
                  
                ),

              ),
            ),
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 IconButton(onPressed: (){}, icon: Icon(EvaIcons.facebook),color: Colors.blue,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.telegram),color: Colors.blue[900],),
                  IconButton(onPressed: (){}, icon: Icon(Icons.account_circle)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.account_circle)),


                ],
              ),
            ),SizedBox(height: 20,),
            Center(child: Text('football',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),),
            SizedBox(height: 20,),
            Center(child: Text('@account status',style: TextStyle(fontSize: 30),)),
            SizedBox(height: 30,),
            Center(child: Text("football player and famous celebrity")),

            Container(
              
            ),
          ],
        ),
      ),
    );
  }
}