import 'package:flutter/material.dart';
//import 'package:flutterapp2/pages/Got.dart';


class Gs7 extends StatefulWidget {
  @override
  _Gs7State createState() => _Gs7State();
}

class _Gs7State extends State<Gs7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Season 7',

          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),


        ),
        centerTitle: true,
        backgroundColor: Colors.brown[600],

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




          ],
        ),
        ],
      ),
    );
  }
}

