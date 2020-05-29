import 'package:flutter/material.dart';
//import 'package:flutterapp2/pages/PB2.dart';
import 'PB1.dart';
import 'PB2.dart';
import 'PB3.dart';
import 'PB4.dart';
import 'PB5.dart';





class PB extends StatefulWidget {
  @override
  _PBState createState() => _PBState();
}

class _PBState extends State<PB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Peaky blinders',
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
        backgroundColor: Colors.black,
      ),
      body:ListView(

        children:<Widget>[Column(

          children: <Widget>[
            Container(
              child: Image.asset('assets/pb1.jpg'),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text('Peaky Blinders is a British period crime drama television series created by Steven Knight. Set in Birmingham, England, the series follows the exploits of the Shelby crime family in the direct aftermath of the First World War. The fictional family is loosely based on a real 19th century urban youth gang of the same name, who were active in the city from the 1890s to the early twentieth century.',
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
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>PB1()));
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
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>PB2()));
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
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>PB3()));
                          },
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>PB4()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>PB5()));},
                        color: Colors.grey,
                        child:Text('Season 5',
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
