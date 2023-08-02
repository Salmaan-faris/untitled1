
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/login.dart';
import 'package:untitled1/login_stateful.dart';
import 'package:untitled1/splash_screen.dart';

import 'demo.dart';
void main (){
  runApp(MaterialApp(home: SplashPage(),));


  }

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network("https://png.pngtree.com/png-vector/20221018/ourmid/pngtree"
          "-facebook-social-media-icon-png-image_6315968.png"),
          //'https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-512.png'),
      title: Text(
        "Title",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: Text("Loading..."),
      navigator: login(),
      durationInSeconds: 5,
    );
  }
}

