import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:login/drawer.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    final emailField = TextFormField(
      validator: (input) => input.isEmpty ? 'Email can\'t be empty.' : null,
      obscureText: false,
      onSaved: (input) => _email = input,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextFormField(
      validator: (input) => input.isEmpty ? 'Email can\'t be empty.' : null,
      obscureText: true,
      onSaved: (input) => _password = input,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );


    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                  child: Image.asset(
                    "assets/anpr.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 130.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Color(0xff01A0C7),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: validateAndSubmit,
                    child: Text("Login",
                        textAlign: TextAlign.center,
                        style: style.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
    
  }

  void validateAndSubmit() async {
    FirebaseUser user;
    if (validateAndSave()) {

      try {
           user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email:_email, password:_password)).user;
          }
      catch (e) {

             print(e.message);

      }
      finally{
        if(user!=null){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyDrawer(title:'Vehicle monitoring')),
          );
          print(user.email);
        }
        else
          {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage ()),
            );

          }
      }
    } else {
      print('error');
    }
  }}
