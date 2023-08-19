import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() {
  runApp(const MyApp());
}

void buildKey() {

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int audioNumber = 1;

  @override
  Widget build(BuildContext context) {
    Audio audio = Audio.load('assets/note$audioNumber.wav');
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Virtual Xylophone")),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      audioNumber=1;
                    });
                    audio.play();
                  },
                  child: Container(
                    color: Colors.teal,
                  ),
                ),
            ),
            Expanded(child: GestureDetector(
              onTap: (){
                setState(() {
                  audioNumber=2;
                });
                audio.play();
              },
              child: Container(
                color: Colors.indigo,
              ),
            ),
            ),
            Expanded(child: GestureDetector(
              onTap: (){
                setState(() {
                  audioNumber=3;
                });
                audio.play();
              },
              child: Container(
                color: Colors.blue,
                ),
              ),),
            Expanded(child: GestureDetector(
              onTap: (){
                setState(() {
                  audioNumber=4;
                });
                audio.play();
              },
              child: Container(
                color: Colors.green,
              ),
            ),),
            Expanded(child: GestureDetector(
              onTap: (){
                setState(() {
                 audioNumber=5;
                });
                audio.play();
                },
              child: Container(
                color: Colors.yellow,
              ),
            ),),
            Expanded(child: GestureDetector(
              onTap: (){
                setState(() {
                  audioNumber=6;
                });
                audio.play();
              },
              child: Container(
                color: Colors.orange,
              ),
              ),),
            Expanded(child: GestureDetector(
              onTap: (){
                setState(() {
                  audioNumber=7;
                });
                audio.play();
              },
              child: Container(
                color: Colors.red,
                ),
                ),),
              ],
              ),
          ),
        ),
    );
  }
}




