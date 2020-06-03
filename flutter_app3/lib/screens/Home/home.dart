import 'package:flutter/material.dart';
import 'package:flutterapp3/screens/pages/friends.dart';
import 'package:flutterapp3/screens/pages/Got.dart';
import 'package:flutterapp3/screens/pages/MH.dart';
import 'package:flutterapp3/screens/pages/Of.dart';
import 'package:flutterapp3/screens/pages/PB.dart';
import 'package:flutterapp3/screens/pages/Vik.dart';
import 'package:flutterapp3/services/auth.dart';
//import 'package:flutterapp/screens/pages/PB.dart';


void main() => runApp(MaterialApp(

  //home:Home()
  routes: {
    //'/': (context)=> Home(),
    '/friends': (context)=> Friends(),
    '/Got': (context)=> GOT(),
    '/Vik': (context)=> Vik(),
    '/MH': (context)=> MH(),
    '/Of': (context)=> Of(),
    '/PB': (context)=> PB(),

  },
));


class Home extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();
  //String name = 'friends';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('TV Shows',

          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),


        ),
        actions: <Widget>[
          FlatButton.icon(onPressed: ()async{await _auth.signOut();}, icon: Icon(Icons.person,color: Colors.white,), label: Text('Logout',style: TextStyle(color: Colors.white),))
        ],
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body:ListView(
        children:<Widget>[ Column(
          children: <Widget>[
            Card(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(16.0),
                  ),
                  child:Column(
                    children: <Widget>[
                      ClipRRect(
                        child: new Image.asset(
                          'assets/FRI.jpg'
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: new Radius.circular(16.0),
                          topRight: new Radius.circular(16.0),
                        ),
                      ),
                          Text('F.R.I.E.N.D.S',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                         SizedBox(height: 20.0,),
                         Text('Imdb:8.9',
                         style: TextStyle(
                           color: Colors.white,
                         ),),
                      SizedBox(height: 20.0,),
                           RaisedButton(
                            onPressed: (){
                              Navigator.push(context, new MaterialPageRoute(builder: (context)=>Friends()));
                            },
                            child: Text('details'),
                          )
                    ],
                  ),
                ),

            Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(16.0),
              ),
              child:Column(
                children: <Widget>[
                  ClipRRect(
                    child: new Image.asset(
                        'assets/GGT.jpg'
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: new Radius.circular(16.0),
                      topRight: new Radius.circular(16.0),
                    ),
                  ),
                  Text('Game Of Thrones',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text('Imdb:9.1',
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  SizedBox(height: 20.0,),
                  RaisedButton(
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=>GOT()));
                    },
                    child: Text('details'),
                  )
                ],
              ),
            ),

            Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(16.0),
              ),
              child:Column(
                children: <Widget>[
                  ClipRRect(
                    child: new Image.asset(
                        'assets/VVII.jpg'
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: new Radius.circular(16.0),
                      topRight: new Radius.circular(16.0),
                    ),
                  ),
                  Text('Vikings',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text('Imdb:8.8',
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  SizedBox(height: 20.0,),
                  RaisedButton(
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=>Vik()));
                    },
                    child: Text('details'),
                  )
                ],
              ),
            ),
            Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(16.0),
              ),
              child:Column(
                children: <Widget>[
                  ClipRRect(
                    child: new Image.asset(
                        'assets/MMHH.jpg'
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: new Radius.circular(16.0),
                      topRight: new Radius.circular(16.0),
                    ),
                  ),
                  Text('Money Heist',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text('Imdb:8.5',
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  SizedBox(height: 20.0,),
                  RaisedButton(
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=>MH()));
                    },
                    child: Text('details'),
                  )
                ],
              ),
            ),

            Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(16.0),
              ),
              child:Column(
                children: <Widget>[
                  ClipRRect(
                    child: new Image.asset(
                        'assets/OOFF.jpg'
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: new Radius.circular(16.0),
                      topRight: new Radius.circular(16.0),
                    ),
                  ),
                  Text('The Office',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text('Imdb:8.9',
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  SizedBox(height: 20.0,),
                  RaisedButton(
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=>Of()));
                    },
                    child: Text('details'),
                  )
                ],
              ),
            ),
            Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(16.0),
              ),
              child:Column(
                children: <Widget>[
                  ClipRRect(
                    child: new Image.asset(
                        'assets/PPBB.jpg'
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: new Radius.circular(16.0),
                      topRight: new Radius.circular(16.0),
                    ),
                  ),
                  Text('F.R.I.E.N.D.S',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text('Imdb:8.8',
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  SizedBox(height: 20.0,),
                  RaisedButton(
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=>PB()));
                    },
                    child: Text('details'),
                  )
                ],
              ),
            ),



          ],
        ),
    ],
      ),
      backgroundColor: Colors.grey,




    );

  }
}
