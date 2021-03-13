import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PlayMusicPage extends StatefulWidget {
  @override
  _PlayMusicPageState createState() => _PlayMusicPageState();
}

class _PlayMusicPageState extends State<PlayMusicPage> {

  AudioPlayer audioPlayer;
  String durasi = '00.00.00';

  _PlayMusicPageState() {
    audioPlayer = AudioPlayer();
    
    audioPlayer.onAudioPositionChanged.listen((duration) { 
      setState(() {
        durasi = duration.toString();
      });
    });

    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.seek(Duration(seconds: 30));
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LISTENING MUSIC PAGE')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              onPressed: (){
                playSound('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
              },
              child: Text('Play'),
            ),
            RaisedButton(
              onPressed: (){
                pauseSound();
              },
              child: Text('Pause'),
            ),
            RaisedButton(
              onPressed: (){
                resumeSound();
              },
              child: Text('Resume'),
            ),
            RaisedButton(
              onPressed: (){
                stopSound();
              },
              child: Text('Stop'),
            ),
            Text(
              durasi,
              style: TextStyle(
                fontSize: 20
              ),
            ),
          ],
        ),
      ),
    );
  }
}