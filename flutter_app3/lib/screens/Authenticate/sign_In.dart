import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp3/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar:AppBar(
        backgroundColor: Colors.brown[400],
        title: Text('Sign In'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text('Sign In anon'),
          onPressed: () async{
            dynamic result =  await _auth.signInAnon();
            if(result == null){
              print('error');
            }else{
              print('sucesfull');
              print(result.uid);
            }
          },
        ),
      ),
    );
  }
}
