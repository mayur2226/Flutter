//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp3/services/auth.dart';
import 'package:flutterapp3/shared/const.dart';
import 'package:flutterapp3/shared/loading.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();
  bool loading = false;
  String email = '';
  String password = '';
  String error= '';

  @override
  Widget build(BuildContext context) {
    return loading? Loading(): Scaffold(
      backgroundColor: Colors.grey[500],
      appBar:AppBar(
        backgroundColor: Colors.brown[400],
        title: Text('Sign In'),
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: (){widget.toggleView();},
            icon: Icon(Icons.person),

            label: Text('Register',
            style: TextStyle(
              color: Colors.white,
            ) ,
            ),
          ),
        ],
      ),

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child:Form(
          key: _formkey,
        child: Column(
          children: <Widget>[
            SizedBox(height: 100.0,),
            TextFormField(
              decoration: textInputDecoration.copyWith(hintText: 'Email'),
              validator: (val)=>val.isEmpty? 'Enter an email': null,
              onChanged: (val){
                setState(() => email = val);
              },
            ),
            SizedBox(height: 20.0,),
            TextFormField(
              decoration: textInputDecoration.copyWith(hintText: 'Password'),
              validator: (val)=> val.length < 6? 'more 6':null,
              obscureText: true,

              onChanged: (val){
                setState(() => password = val);
              },
            ),
            SizedBox(height: 20.0,),
            RaisedButton(
              onPressed: ()async{
                if (_formkey.currentState.validate()){
                  setState(() =>loading = true);
                  dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                  if(result == null){
                    setState((){
                      error = 'could not find those credentials';
                      loading=false;
                    });
                  }
                }
              },
              child: Text('Sign In'),
            ),
            SizedBox(height: 12.0,),
            Text(error),
          ],
        ),
      ),
      ),
    );
  }
}
