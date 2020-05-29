import 'package:flutter/material.dart';
//import 'package:flutterapp2/pages/Fs10.dart';
//import 'package:flutterapp2/pages/PB1.dart';
import 'Fs1.dart';
import 'Fs2.dart';
import 'Fs3.dart';
import 'Fs4.dart';
import 'Fs5.dart';
import 'Fs6.dart';
import 'Fs7.dart';
import 'Fs8.dart';
import 'Fs9.dart';
import 'Fs10.dart';


class Friends extends StatefulWidget {
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: Text('F.R.I.E.N.D.S',
          style:TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ) ,),
        backgroundColor: Colors.blue,
      ),
      body:ListView(

      children:<Widget>[Column(

        children: <Widget>[
          Container(
            child: Image.asset('assets/f2.jpg'),
          ),
          SizedBox(height: 20,),
          Container(
            child: Text('Friends is an American sitcom television series, created by David Crane and Marta Kauffman, which aired on NBC from September 22, 1994, to May 6, 2004, lasting ten seasons.[1] With an ensemble cast starring Jennifer Aniston, Courteney Cox, Lisa Kudrow, Matt LeBlanc, Matthew Perry and David Schwimmer, the show revolves around six friends in their 20s and 30s who live in Manhattan, New York City. The series was produced by Bright/Kauffman/Crane Productions, in association with Warner Bros. Television. The original executive producers were Kevin S. Bright, Kauffman, and Crane.',
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),),
          ),

            Row(
              children: <Widget>[
                Container(

                  child:Expanded(
                    child: Card(
                      color: Colors.grey,
                      child: FlatButton(
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs1()));
                        },
                        color: Colors.grey,
                        child:Text('Season 1',
                        style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          Row(
            children: <Widget>[
              Container(
                child:Expanded(
                  child: Card(
                    color: Colors.grey,
                    child: FlatButton(

                      onPressed: (){
                        Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs2()));
                      },
                      color: Colors.grey,
                      child:Text('Season 2',
                        style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child:Expanded(
                  child: Card(
                    color: Colors.grey,
                    child: FlatButton(
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs3()));},
                      color: Colors.grey,
                      child:Text('Season 3',
                        style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child:Expanded(
                  child: Card(
                    color: Colors.grey,
                    child: FlatButton(
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs4()));},
                      color: Colors.grey,
                      child:Text('Season 4',
                        style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child:Expanded(
                  child: Card(
                    color: Colors.grey,
                    child: FlatButton(
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs5()));},
                      color: Colors.grey,
                      child:Text('Season 5',
                        style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child:Expanded(
                  child: Card(
                    color: Colors.grey,
                    child: FlatButton(
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs6()));},
                      color: Colors.grey,
                      child:Text('Season 6',
                        style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child:Expanded(
                  child: Card(
                    color: Colors.grey,
                    child: FlatButton(
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs7()));},
                      color: Colors.grey,
                      child:Text('Season 7',
                        style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child:Expanded(
                  child: Card(
                    color: Colors.grey,
                    child: FlatButton(
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs8()));},
                      color: Colors.grey,
                      child:Text('Season 8',
                        style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child:Expanded(
                  child: Card(
                    color: Colors.grey,
                    child: FlatButton(
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs9()));},
                      color: Colors.grey,
                      child:Text('Season 9',
                        style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child:Expanded(
                  child: Card(
                    color: Colors.grey,
                    child: FlatButton(
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs10()));},
                      color: Colors.grey,
                      child:Text('Season 10',
                        style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
          ],
      ),
    );
  }
}
