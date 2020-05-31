import 'package:flutter/material.dart';
//import 'package:flutterapp2/pages/PB2.dart';
import 'PB1.dart';
import 'PB2.dart';
import 'PB3.dart';
import 'PB4.dart';
import 'PB5.dart';
import 'package:video_player/video_player.dart';




class PB extends StatefulWidget {
  @override
  _PBState createState() => _PBState();
}

class _PBState extends State<PB> {

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {

    _controller = VideoPlayerController.network(
      'https://r3---sn-poufvj5cax-cvhl.googlevideo.com/videoplayback?expire=1590941505&ei=4YLTXrCkHpSNkgac-bCAAw&ip=194.105.158.219&id=o-AG9wfbz89bmjhgslFuSnCaMwJPLjM4YLX1-1tmb7DdxZ&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&gir=yes&clen=6222696&ratebypass=yes&dur=127.523&lmt=1586033835699967&fvip=3&c=MWEB&txp=5431432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAL_v5aa8qAYcqEjebjmUzZStRKZcxi3I2ZfWudwujk7SAiEAx9USfNlYyRfgycZ4YJgozQWmb3RXHVmJHIFUFLEg3X8%3D&utmg=ytap1_oVzVdvGIC7U&title=Peaky_Blinders_-_Season_1__Trailer.mp4&cms_redirect=yes&mh=vA&mip=203.192.244.32&mm=31&mn=sn-poufvj5cax-cvhl&ms=au&mt=1590919832&mv=m&mvi=2&pcm2cms=yes&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pcm2cms,pl&lsig=AG3C_xAwRQIhAPbvtg6ebfAzZPk2hhRr7173zMpkQwRK4kv0wMXeBW2QAiBp_3x-yrdgC7qF1MV8ew9J-4g8CaE7b01brw9onxvTVA%3D%3D',
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
        title: Text('Peaky blinders',
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
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
              child: Text('Peaky Blinders is a British period crime drama television series created by Steven Knight. Set in Birmingham, England, the series follows the exploits of the Shelby crime family in the direct aftermath of the First World War. The fictional family is loosely based on a real 19th century urban youth gang of the same name, who were active in the city from the 1890s to the early twentieth century.',
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
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>PB1()));
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
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>PB2()));
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
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>PB3()));
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>PB4()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>PB5()));},
                        color: Colors.grey,
                        child:Text('Season 5',
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
