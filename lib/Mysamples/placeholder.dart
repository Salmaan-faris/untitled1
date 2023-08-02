import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: placeholderr(),
  ));
}

class placeholderr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          height: 300,
          width: double.infinity,
          child: Placeholder(
              fallbackHeight: 100,
              fallbackWidth: 100,
              strokeWidth: 5,
              child:
              FadeInImage(
                //fadeOutDuration: Duration(seconds: 4),
                fit: BoxFit.fill,
                image:AssetImage("assets/image/qt.png"),
                placeholder: AssetImage("assets/image/images.png"),
              )
          ),
        ),
      ),
    );
  }
}
