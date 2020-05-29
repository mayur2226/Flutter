import 'package:flutter/material.dart';
import 'Os1.dart';
import 'Os2.dart';
import 'Os3.dart';
import 'Os4.dart';
import 'Os5.dart';
import 'Os6.dart';
import 'Os7.dart';
import 'Os8.dart';
import 'Os9.dart';

class Of extends StatefulWidget {
  @override
  _OfState createState() => _OfState();
}

class _OfState extends State<Of> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('The Office',
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.white,

        ),
        ),
      ),
      body:ListView(

        children:<Widget>[Column(

          children: <Widget>[
            Container(
              child: Image.asset('assets/of1.jpg'),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text('The Office is an American mockumentary sitcom television series that depicts the everyday lives of office employees in the Scranton, Pennsylvania branch of the fictional Dunder Mifflin Paper Company. It aired on NBC from March 24, 2005, to May 16, 2013, lasting a total of nine seasons.[1] It is an adaptation of the 2001-2003 BBC series of the same name, being adapted for American television by Greg Daniels, a veteran writer for Saturday Night Live, King of the Hill, and The Simpsons.',
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os1()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os2()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os3()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os4()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os5()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os6()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os7()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os8()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os9()));},
                        color: Colors.grey,
                        child:Text('Season 9',
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
