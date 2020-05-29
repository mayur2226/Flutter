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
        title: Text('Web Series',

          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),


        ),
        actions: <Widget>[
          FlatButton.icon(onPressed: ()async{await _auth.signOut();}, icon: Icon(Icons.person), label: Text('Logout'))
        ],
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body:Column(
        children: <Widget>[
          Expanded(
            child: Expanded(
              child:Card(
                color: Colors.grey[300],
                child:Row(
                  children: <Widget>[
                    Expanded(
                      flex: 12,

                      child: Image.asset('assets/Friends.jpg'),


                    ),
                    Expanded(

                      flex: 7,
                      child: Text('F.R.I.E.N.D.S',
                        style:TextStyle(
                          fontStyle: FontStyle.italic,
                        ),),

                    ),
                    Expanded(
                      flex: 4,
                      child: Text('Imdb:8.9'),
                    ),
                    Expanded(
                        flex: 6,
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.push(context, new MaterialPageRoute(builder: (context)=>Friends()));
                          },
                          child: Text('details'),
                        )
                    ),



                  ],

                ),

              ),
            ),
          ),

          Expanded(

            child: Expanded(
              child:Card(
                color: Colors.grey[300],
                child:Row(
                  children: <Widget>[
                    Expanded(
                      flex: 12,
                      child: Image.asset('assets/GOT.jpg'),
                    ),
                    Expanded(
                      flex: 7,
                      child: Text('Game Of Thrones',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),),
                    ),
                    Expanded(
                      flex: 4,
                      child: Text('Imdb:9.1'),
                    ),
                    Expanded(
                        flex: 6,
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.push(context, new MaterialPageRoute(builder: (context)=>GOT()));
                          },
                          child: Text('details'),
                        )
                    ),



                  ],
                ),
              ),
            ),
          ),

          Expanded(
            child:Card(
              color: Colors.grey[300],
              child:Row(
                children: <Widget>[
                  Expanded(
                    flex:12,

                    child: Image.asset('assets/Vik.jpg'),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text('Vikings',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                      ),),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text('Imdb:8.8'),
                  ),
                  Expanded(
                      flex: 6,
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>Vik()));
                        },
                        child: Text('details'),
                      )
                  ),



                ],
              ),
            ),
          ),

          Expanded(
            child:Card(
              color: Colors.grey[300],
              child:Row(

                children: <Widget>[
                  Expanded(
                    flex:12,
                    child: Image.asset('assets/MH.jpg'),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text('Money Heist',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                      ),),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text('Imdb:8.5'),
                  ),
                  Expanded(
                      flex: 6,
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>MH()));
                        },
                        child: Text('details'),
                      )
                  ),

                ],
              ),
            ),
          ),

          Expanded(
            child:Card(
              color: Colors.grey[300],
              child:Row(
                children: <Widget>[
                  Expanded(
                    flex:12,
                    child: Image.asset('assets/off.jpg'),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text('The Office',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                      ),),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text('Imdb:8.9'),
                  ),
                  Expanded(
                      flex: 6,
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>Of()));
                        },
                        child: Text('details'),
                      )
                  ),


                ],
              ),
            ),
          ),

          Expanded(
            child:Card(
              color: Colors.grey[300],
              child:Row(
                children: <Widget>[
                  Expanded(
                    flex:12,
                    child: Image.asset('assets/PB.jpg'),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text('Peaky Blinders',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                      ),),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text('Imdb:8.8'),
                  ),
                  Expanded(
                      flex: 6,
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>PB()));
                        },
                        child: Text('details'),
                      )
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey,




    );

  }
}
