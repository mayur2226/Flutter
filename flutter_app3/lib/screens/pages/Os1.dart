import 'package:flutter/material.dart';
//import 'package:flutterapp2/pages/Of.dart';

class Os1 extends StatefulWidget {
  @override
  _Os1State createState() => _Os1State();
}

class _Os1State extends State<Os1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Season 1',

          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),


        ),
        centerTitle: true,
        backgroundColor: Colors.black,

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



          ],
        ),
        ],
      ),
    );
  }
}