import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class MyHomepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Home Page"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Welcome uid!'),

      ),
    ));
  }
}