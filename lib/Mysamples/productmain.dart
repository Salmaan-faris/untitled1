

import 'package:flutter/material.dart';
import 'package:untitled1/Mysamples/productlist2.dart';
import 'package:untitled1/Mysamples/prodummydata.dart';

void main(){
  runApp(MaterialApp(home: productmain(),
     routes: {"secondome":(context)=>productlist(),
   },
  ));

}

class productmain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title:Text("product list") ,
    ),
    body: Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: dummyproducts.map((product){
          return TextButton(
            // onPressed: (){
            //   Navigator.of(context).push(MaterialPageRoute(builder: (context){
            //     return productlist(product["id"]);
            //   }));
            //},
            onPressed: () =>gotonext(context, product["id"]),
              child: Text("${product["name"]}"));
        }).toList(),
      ),
    ),
  );
  }
}
void gotonext(BuildContext context,product){
  Navigator.of(context).pushNamed("secondome",arguments: product);
}
