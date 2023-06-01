import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:text_to_speech/text_to_speech.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: misaq(),
  ));
}

class misaq extends StatelessWidget {
  const misaq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => nextPage()));
                },
                icon: Icon(Icons.rowing))
          ],
          title: Center(child: Text('test app ')),
          backgroundColor: Colors.blueGrey),
      body: Container(
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (c, i) {
                return ListTile(
                    title: Row(
                  children: [
                    Text('noun=${nouns[i]}]'),
                    Text('Adjectives=${adjectives[i]}')
                  ],
                ));
              })),
    );
  }
}

class nextPage extends StatelessWidget {
   nextPage({Key? key}) : super(key: key);
var list=nouns[Random().nextInt(1)];
var misaq='eshtani    khobi     chigapa';
TextToSpeech tts=TextToSpeech();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('new page'),
        ),
        body: GestureDetector(
          onTap: (){
            tts.speak(list);
            Icon(Icons.volume_up);
          },child:Center(
            child: Column(children: [ElevatedButton(onPressed: (){
              tts.speak(misaq);
            }, child: Icon(Icons.volume_up)),Text(
              '${nouns[15]}',
              style: TextStyle(fontSize: 80, color: Colors.blueGrey),
            )],)),
        ));
  }
}
