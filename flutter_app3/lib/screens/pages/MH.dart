import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Ms1.dart';
import 'Ms2.dart';
import 'Ms3.dart';
import 'Ms4.dart';
import 'package:video_player/video_player.dart';


class MH extends StatefulWidget {
  @override
  _MHState createState() => _MHState();
}

class _MHState extends State<MH> {

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {

    _controller = VideoPlayerController.network(
      'https://r2---sn-poufvj5cax-cvhl.googlevideo.com/videoplayback?expire=1590941065&ei=KIHTXrDqOZeJkwaT8YXoDw&ip=91.198.230.15&id=o-AFMBRyF0odqlTZrwXwZXmDuo6vBxp5ynFuLMwJAAlzjN&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&gir=yes&clen=4427755&ratebypass=yes&dur=77.067&lmt=1585899174531247&fvip=2&fexp=23882513&c=MWEB&txp=5531432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgWbSlEfLBS-s6cgGNPgDoYskt6q0pCnpM38GFIy1H5gECIQCHx0TUlCP1uotXb5mJ01IN4ZK8foXCHmiQiOk22FqQNA%3D%3D&utmg=ytap1_fvCdLmxnkj0&title=Money_Heist_-_Part_1__Official_Trailer__Netflix.mp4&cms_redirect=yes&mh=Ly&mip=203.192.244.32&mm=31&mn=sn-poufvj5cax-cvhl&ms=au&mt=1590919413&mv=m&mvi=1&pcm2cms=yes&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pcm2cms,pl&lsig=AG3C_xAwRAIgYMQs8KlGimPBchg2TFpcxlJ3CTFR9qkW0CSR7e7ShyYCIDpynPBCebegl9N6cG2l5ZZVpXzJngkwQ65oO4djmVWG',
    );


    _initializeVideoPlayerFuture = _controller.initialize();


    _controller.setLooping(true);
    super.initState();

  }
  @override
  void dispose() {

    _controller.dispose();

    super.dispose();
  }


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

        backgroundColor: Colors.black,
      ),
      body:ListView(

          children:<Widget>[Column(

      children: <Widget>[
        FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {

              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,

                child: VideoPlayer(_controller),
              );
            } else {

              return Center(child: CircularProgressIndicator());
            }
          },
        ),


        Container(
          child: FlatButton.icon(
            color: Colors.white,
            onPressed: () {

              setState(() {

                if (_controller.value.isPlaying) {
                  _controller.pause();
                } else {

                  _controller.play();
                }
              });
            },
            icon: Icon(_controller.value.isPlaying?Icons.pause:Icons.play_arrow), label: Text('Play'),),
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
