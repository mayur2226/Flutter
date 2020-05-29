import 'package:flutter/material.dart';
//import 'package:flutterapp2/pages/Vik.dart';

class Vs3 extends StatefulWidget {
  @override
  _Vs3State createState() => _Vs3State();
}

class _Vs3State extends State<Vs3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Season 3',

          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),


        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent[600],

      ),
      body: ListView(
        children: <Widget>[ Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child:Expanded(
                    child: Card(
                      child: FlatButton.icon(
                        onPressed: (){},
                        label: Text('Episode 1'),
                        icon: Icon(Icons.file_download),
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
                      child: FlatButton.icon(
                        onPressed: (){},
                        label: Text('Episode 2'),
                        icon: Icon(Icons.file_download),
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
                      child: FlatButton.icon(
                        onPressed: (){},
                        label: Text('Episode 3'),
                        icon: Icon(Icons.file_download),
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
                      child: FlatButton.icon(
                        onPressed: (){},
                        label: Text('Episode 4'),
                        icon: Icon(Icons.file_download),
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
                      child: FlatButton.icon(
                        onPressed: (){},
                        label: Text('Episode 5'),
                        icon: Icon(Icons.file_download),
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
                      child: FlatButton.icon(
                        onPressed: (){},
                        label: Text('Episode 6'),
                        icon: Icon(Icons.file_download),
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
                      child: FlatButton.icon(
                        onPressed: (){},
                        label: Text('Episode 7'),
                        icon: Icon(Icons.file_download),
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
                      child: FlatButton.icon(
                        onPressed: (){},
                        label: Text('Episode 8'),
                        icon: Icon(Icons.file_download),
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
                      child: FlatButton.icon(
                        onPressed: (){},
                        label: Text('Episode 9'),
                        icon: Icon(Icons.file_download),
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
                      child: FlatButton.icon(
                        onPressed: (){},
                        label: Text('Episode 10'),
                        icon: Icon(Icons.file_download),
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