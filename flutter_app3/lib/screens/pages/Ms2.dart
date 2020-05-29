import 'package:flutter/material.dart';
//import 'package:flutterapp2/pages/MH.dart';

class Ms2 extends StatefulWidget {
  @override
  _Ms2State createState() => _Ms2State();
}

class _Ms2State extends State<Ms2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Season 2',

          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),


        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],

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



          ],
        ),
        ],
      ),
    );
  }
}
