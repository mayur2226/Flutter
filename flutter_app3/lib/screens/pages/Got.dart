import 'package:flutter/material.dart';


import 'Gs1.dart';
import 'Gs2.dart';
import 'Gs3.dart';
import 'Gs4.dart';
import 'Gs5.dart';
import 'Gs6.dart';
import 'Gs7.dart';
import 'Gs8.dart';







class GOT extends StatefulWidget {
  @override
  _GOTState createState() => _GOTState();
}

class _GOTState extends State<GOT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Game Of Thrones',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
        ),
        backgroundColor: Colors.black,
      ),
      body:ListView(

        children:<Widget>[Column(

          children: <Widget>[
            Container(
              child: Image.asset('assets/g2.jpg'),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text('The Game of Thrones television series is an adaptation of the Song of Ice and Fire novels but will deviate from them in some areas. In addition this wiki is meant for the enjoyment of watchers of the television series who do not have any knowledge of the books',
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Gs1()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Gs2()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Gs3()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Gs4()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Gs5()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Gs6()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Gs7()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Gs8()));},
                        color: Colors.grey
                        ,
                        child:Text('Season 8',
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
