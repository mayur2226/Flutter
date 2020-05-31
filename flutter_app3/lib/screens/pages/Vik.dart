import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'Vs1.dart';
import 'Vs2.dart';
import 'Vs3.dart';
import 'Vs4.dart';
import 'Vs5.dart';
import 'Vs6.dart';


class Vik extends StatefulWidget {
  @override
  _VikState createState() => _VikState();
}

class _VikState extends State<Vik> {

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {

    _controller = VideoPlayerController.network(
      'https://r5---sn-poufvj5cax-cvhl.googlevideo.com/videoplayback?expire=1590941659&ei=e4PTXoPbCMqX1Ab715WADA&ip=103.95.82.73&id=o-AMOgBXHj8lLM2ZzucA7kzs3K7GM61iHzJWcruFNtslJQ&itag=18&source=youtube&requiressl=yes&gcr=in&vprv=1&mime=video%2Fmp4&gir=yes&clen=17894005&ratebypass=yes&dur=245.852&lmt=1540143002196353&fvip=5&fexp=23882514&c=MWEB&txp=5431432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cgcr%2Cvprv%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAIDbzk9Ks9XaPUMG9G1p2JxJcRKHTkA2G6u-XNMC2qfJAiEAs3VrQqWkGBS8M4ty6uqteIIvBgzhCbDUzz9UgWUncdU=&utmg=ytap1_f5av6OqFwz0&title=Vikings_season_1_trailer.mp4&cms_redirect=yes&mh=W5&mip=203.192.244.32&mm=31&mn=sn-poufvj5cax-cvhl&ms=au&mt=1590920011&mv=m&mvi=4&pcm2cms=yes&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pcm2cms,pl&lsig=AG3C_xAwRgIhANTlPDz8Sl5tYjGSVOh76pd2U80fRO04W1SnuXn35TFKAiEA5FHlYqKWamBRr5bVoyqKUmh2LEfviHvCCkmFR9QUrQs%3D',
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
        title: Text('Vikings',
        style: TextStyle(
            fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.white
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
              child: Text('Vikings is a historical drama television series created and written by Michael Hirst for the History channel. Filmed in Ireland, it premiered on March 3, 2013, in Canada. In January 2019, it was announced that the 20-episode sixth season, which was ordered on September 12, 2017, ahead of its fifth-season premiere, would be the final season of the series',
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
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>Vs1()));
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Vs2()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Vs3()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Vs4()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Vs5()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Vs6()));},
                        color: Colors.grey,
                        child:Text('Season 6',
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
