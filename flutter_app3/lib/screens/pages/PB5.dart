import 'package:flutter/material.dart';

class PB5 extends StatefulWidget {
  @override
  _PB5State createState() => _PB5State();
}

class _PB5State extends State<PB5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Season 5',
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
