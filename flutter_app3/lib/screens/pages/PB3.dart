import 'package:flutter/material.dart';


class PB3 extends StatefulWidget {
  @override
  _PB3State createState() => _PB3State();
}

class _PB3State extends State<PB3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Season 3',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),),
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
        )
    );
  }
}
