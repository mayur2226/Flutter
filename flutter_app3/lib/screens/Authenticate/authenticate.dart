import 'package:flutter/material.dart';
import 'package:flutterapp3/screens/Authenticate/Register.dart';
import 'package:flutterapp3/screens/Authenticate/sign_In.dart';


class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;

  void toggleView(){

    setState(()=> showSignIn = !showSignIn);

  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn){
      return SignIn(toggleView: toggleView);
    }else{
      return Register(toggleView: toggleView);
    }
  }
}
