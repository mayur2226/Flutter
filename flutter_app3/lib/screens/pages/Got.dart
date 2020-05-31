import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

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

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;


  @override
  void initState() {

    _controller = VideoPlayerController.network(
      'https://r1---sn-poufvj5cax-cvhl.googlevideo.com/videoplayback?expire=1590940442&ei=un7TXqPSJc_jkgbi2pS4Dw&ip=193.135.13.148&id=o-ANYinpBvLQMBEbZSCrAnF6l2i-wRm1OpIfIFqNJ2rl5D&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&gir=yes&clen=8636241&ratebypass=yes&dur=161.378&lmt=1555249867656420&fvip=1&c=MWEB&txp=5531432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhALTwKkqEfIU6M2M1dArQUBOLt2CYGswEIjLKOtF2zZs7AiAGk_UU7Iu_goL-FP2z3_MHCBHVoRnXPLctafRtK_PsKw==&utmg=ytap1_gcTkNV5Vg1E&title=Game_of_Thrones_Season_1_Trailer.mp4&cms_redirect=yes&mh=cW&mip=203.192.244.32&mm=31&mn=sn-poufvj5cax-cvhl&ms=au&mt=1590919174&mv=m&mvi=0&pcm2cms=yes&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pcm2cms,pl&lsig=AG3C_xAwRQIhAJDYO1i2s7-bhXk3lvDTE5h4lhKxuiiiHLUGa0NHe91pAiAiGuj3i2gQ02DNi7CW8a0Jut6GuaBpNOMOnrLmC5xS-Q%3D%3D',
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
