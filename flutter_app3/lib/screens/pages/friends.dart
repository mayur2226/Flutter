import 'package:flutter/material.dart';
//import 'package:flutterapp2/pages/Fs10.dart';
//import 'package:flutterapp2/pages/PB1.dart';
import 'Fs1.dart';
import 'Fs2.dart';
import 'Fs3.dart';
import 'Fs4.dart';
import 'Fs5.dart';
import 'Fs6.dart';
import 'Fs7.dart';
import 'Fs8.dart';
import 'Fs9.dart';
import 'Fs10.dart';
import 'package:video_player/video_player.dart';


class Friends extends StatefulWidget {
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {

    _controller = VideoPlayerController.network(
      'https://r3---sn-poufvj5cax-cvhl.googlevideo.com/videoplayback?expire=1590929355&ei=a1PTXufoKIHOkgbK4IC4BA&ip=91.229.105.127&id=o-AGlazT-LFUltkoXqqncgGwa8tPxDUBbH0ZspFOEz-Jpn&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&gir=yes&clen=13580915&ratebypass=yes&dur=180.697&lmt=1573567471660197&fvip=3&fexp=23882513&beids=9466586&c=MWEB&txp=5431432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgCadyhzBaHksrMPiGrUy4QrTcth-GZn395juEP20jE_ECIHta0Ny1z7_cZTO98V7CSeTMca6Dpy0yvewWkRt6pc-s&utmg=ytap1_SHvzX2pl2ec&title=Friends_TV_Series__1994_Season_1_Trailer.mp4&cms_redirect=yes&mh=0a&mip=203.192.244.32&mm=31&mn=sn-poufvj5cax-cvhl&ms=au&mt=1590915933&mv=m&mvi=2&pcm2cms=yes&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pcm2cms,pl&lsig=AG3C_xAwRAIgMKWuaHanTGgO4rmyffeOVJfRmzyhuk59VMA6xIP4ERsCIArIR-pkcZDv9gR8jLr2Vr0mUE7Y-4ou5ziA35eoOUC_',
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
        title: Text('F.R.I.E.N.D.S',
          style:TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ) ,),
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
            child: Text('Friends is an American sitcom television series, created by David Crane and Marta Kauffman, which aired on NBC from September 22, 1994, to May 6, 2004, lasting ten seasons.[1] With an ensemble cast starring Jennifer Aniston, Courteney Cox, Lisa Kudrow, Matt LeBlanc, Matthew Perry and David Schwimmer, the show revolves around six friends in their 20s and 30s who live in Manhattan, New York City. The series was produced by Bright/Kauffman/Crane Productions, in association with Warner Bros. Television. The original executive producers were Kevin S. Bright, Kauffman, and Crane.',
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
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs1()));
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
                        Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs2()));
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
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs3()));},
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
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs4()));},
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
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs5()));},
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
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs6()));},
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
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs7()));},
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
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs8()));},
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
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs9()));},
                      color: Colors.grey,
                      child:Text('Season 9',
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
                      onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (context)=>Fs10()));},
                      color: Colors.grey,
                      child:Text('Season 10',
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
