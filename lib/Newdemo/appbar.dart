import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: CustomAppBarTitle(), // Use the custom title widget here
        ),
        body: Center(
          child: Text('Your App Content'),
        ),
      ),
    );
  }
}

class CustomAppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: 'My ', // First part of the title with one color
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: 'App', // Second part of the title with a different color
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
