import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Ms1.dart';
import 'Ms2.dart';
import 'Ms3.dart';
import 'Ms4.dart';


class MH extends StatefulWidget {
  @override
  _MHState createState() => _MHState();
}

class _MHState extends State<MH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Money Heist',

          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),


        ),
        centerTitle: true,
        backgroundColor: Colors.red[800],
      ),
      body:ListView(

          children:<Widget>[Column(

      children: <Widget>[
      Container(
      child: Image.asset('assets/m2.jpg'),
    ),
    SizedBox(height: 20,),
    Container(
    child: Text('Money Heist (Spanish: La casa de papel, "The House of Paper") is a Spanish heist crime drama television series created by Álex Pina. The series '
        'traces two long-prepared heists led by the Professor (Álvaro Morte), one on the Royal Mint of Spain, and one on the Bank of Spain. The series was initially intended as a limited series to be told in two parts. It had its original run of 15 episodes on Spanish network Antena 3 from 2 May 2017 through 23 November 2017. Netflix acquired global streaming rights in late 2017. It re-cut the series into 22 shorter episodes and released them worldwide, beginning with the first part on 20 December 2017, followed by the second part on 6 April 2018. In April 2018, Netflix renewed the series with a significantly increased budget for 16 new episodes total. Part 3, with eight episodes, was released on 19 July 2019. Part 4, al'
        'so with eight episodes, was released on 3 April 2020. A documentary involving the producers and the cast premiered on Netflix the same day, titled Money Heist: The Phenomenon.',
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
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>Ms1()));
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
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>Ms2()));
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
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>Ms3()));
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
            onPressed: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>Ms4()));
            },
            color: Colors.grey,
            child:Text('Season 4',
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
