import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp3/models/user.dart';
import 'package:flutterapp3/screens/Authenticate/authenticate.dart';
//import 'package:flutterapp/main.dart';
import 'package:flutterapp3/screens/Home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    final user = Provider.of<User>(context);

    if(user == null){
      return Authenticate();
    }else{
      return  Home();
    }



  }
}
