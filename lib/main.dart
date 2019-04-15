import 'package:flutter/material.dart';
import 'package:speech_recognition/speech_recognition.dart';
void main() {
  runApp(
  new MaterialApp(
   home: new Scaffold(
     appBar: new AppBar(
       title: new Text("Test")
     ),
     body: new Container(
       child: new Column(
         children: <Widget>[
           new Text("Hola"),
           new RaisedButton(
             onPressed: () => listen(),
             child: new Text("Activar"),

           )
         ],
       )
     ),
   ),
  ));
}

void listen(){
  SpeechRecognition _speech = new SpeechRecognition();
  _speech.setRecognitionStartedHandler(()=>true);
  _speech.listen(locale: "es_CL").then((r) => print(r));
}
