import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'Vs1.dart';
import 'Vs2.dart';
import 'Vs3.dart';
import 'Vs4.dart';
import 'Vs5.dart';
import 'Vs6.dart';


class Vik extends StatefulWidget {
  @override
  _VikState createState() => _VikState();
}

class _VikState extends State<Vik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Vikings',
        style: TextStyle(
            fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.white
        ),
        ),
        backgroundColor: Colors.grey,
      ),
      body:ListView(

        children:<Widget>[Column(

          children: <Widget>[
            Container(
              child: Image.asset('assets/v1.jpg'),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text('Vikings is a historical drama television series created and written by Michael Hirst for the History channel. Filmed in Ireland, it premiered on March 3, 2013, in Canada. In January 2019, it was announced that the 20-episode sixth season, which was ordered on September 12, 2017, ahead of its fifth-season premiere, would be the final season of the series',
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
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>Vs1()));
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Vs2()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Vs3()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Vs4()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Vs5()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Vs6()));},
                        color: Colors.grey,
                        child:Text('Season 6',
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
