import 'package:flutter/material.dart';
import 'Os1.dart';
import 'Os2.dart';
import 'Os3.dart';
import 'Os4.dart';
import 'Os5.dart';
import 'Os6.dart';
import 'Os7.dart';
import 'Os8.dart';
import 'Os9.dart';
import 'package:video_player/video_player.dart';

class Of extends StatefulWidget {
  @override
  _OfState createState() => _OfState();
}

class _OfState extends State<Of> {

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {

    _controller = VideoPlayerController.network(
      'https://r3---sn-poufvj5cax-cvhl.googlevideo.com/videoplayback?expire=1590941349&ei=RILTXs6jPJ7v4-EP7cubyA8&ip=124.253.220.154&id=o-AEtnh-Np58NNOFqeVJ0oYyL41F7VgXYPOixwjIZXWhuW&itag=18&source=youtube&requiressl=yes&gcr=in&vprv=1&mime=video%2Fmp4&gir=yes&clen=6072959&ratebypass=yes&dur=119.420&lmt=1508303885994519&fvip=3&c=MWEB&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cgcr%2Cvprv%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAN5-JEikfmQ2rAMlpkVhPG5hWPLWHXA8IbL97S1QklfxAiA4_3DTOzE125A68YLfEDnLjC0CDmZ7znQwZdppRKkoDQ%3D%3D&utmg=ytap1_LHOtME2DL4g&title=The_Office_Trailer_2017.mp4&cms_redirect=yes&mh=kP&mip=203.192.244.32&mm=31&mn=sn-poufvj5cax-cvhl&ms=au&mt=1590919712&mv=m&mvi=2&pcm2cms=yes&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pcm2cms,pl&lsig=AG3C_xAwRQIgfnwj0Uo77AqoLIMk3grvlvs6ofBJmHiQ63sMzwNd4VECIQCPT15gxtv2yqb10NWG8K2DzVkTZXQYU56pOtnENaCkEw%3D%3D',
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
        backgroundColor: Colors.black,
        title: Text('The Office',
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.white,

        ),
        ),
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
              child: Text('The Office is an American mockumentary sitcom television series that depicts the everyday lives of office employees in the Scranton, Pennsylvania branch of the fictional Dunder Mifflin Paper Company. It aired on NBC from March 24, 2005, to May 16, 2013, lasting a total of nine seasons.[1] It is an adaptation of the 2001-2003 BBC series of the same name, being adapted for American television by Greg Daniels, a veteran writer for Saturday Night Live, King of the Hill, and The Simpsons.',
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os1()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os2()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os3()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os4()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os5()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os6()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os7()));},
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os8()));},
                        color: Colors.grey,
                        child:Text('Season 8',
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
                        onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>Os9()));},
                        color: Colors.grey,
                        child:Text('Season 9',
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
