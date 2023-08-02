

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:untitled1/Mysamples/prodummydata.dart';

class productlist extends StatelessWidget{






  @override
  Widget build(BuildContext context) {

     final productid=ModalRoute.of(context)?.settings.arguments;
     final product=dummyproducts.firstWhere((data) => data["id"]==productid);

    return Scaffold(
      appBar: AppBar(title: Text("product details"),),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Image.asset(product["image"]),
            Text("${product["id"].toString()}"),
            Text("${product["name"]}"),
            Text("${product["descryption"]}")

          ],
        ),
      ),
    );
  }

}