import 'package:flutter/material.dart';
import 'package:flutterapp3/services/auth.dart';
import 'package:flutterapp3/shared/const.dart';
import 'package:flutterapp3/shared/loading.dart';
class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();
  bool loading=false;
  String error = '';
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return loading? Loading(): Scaffold(
      backgroundColor: Colors.grey[500],
      appBar:AppBar(
        backgroundColor: Colors.brown[400],
        title: Text('Sign Up'),
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: (){widget.toggleView();},
            icon: Icon(Icons.person),
            label: Text('Sign In',
            style: TextStyle(color: Colors.white),),
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
              validator: (val) => val.length <6? 'Enter password of more than 6 chars':null,
              obscureText: true,
              onChanged: (val){
                setState(() => password = val);
              },
            ),
            SizedBox(height: 20.0,),
            RaisedButton(
              onPressed: ()async{
                if (_formkey.currentState.validate()){
                  setState(() => loading = true);
                  dynamic result = await _auth.RegisterWithEmailAndPassword(email, password);
                  if(result == null){
                    setState(() {

                    error = 'please enter valid email';
                    loading=false;
                  });
                  }
                }
              },
              child: Text('Sign Up'),
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
