import 'package:flutter/material.dart';
import 'package:speech/utils/util.dart';
import 'package:speech_recognition/speech_recognition.dart';
class Index extends StatefulWidget {
  @override
  _IndexState createState() => new _IndexState();
 }
class _IndexState extends State<Index> {
  String word="Hola_Mundo";
  void listen(){

    SpeechRecognition _speech = new SpeechRecognition();
    _speech.setRecognitionStartedHandler(()=>true);
    _speech.listen(locale: "es_CL").then((r) => word=r);
    _speech.setRecognitionResultHandler(onRecognitionResult);
    _speech.setRecognitionCompleteHandler(onRecognitionComplete);
  }
  void onRecognitionResult(String text) => setState(() => word="Escuché: "+text);
  void onRecognitionComplete() => setState(() => print("FINALICÉ!: "+word));
  
  var util = new Util();
  @override
  Widget build(BuildContext context) {
   return new Container(
     padding: new EdgeInsets.all(20),
     child: Column(
       children: <Widget>[
         new Text(word),
         new RaisedButton(
           child: new Text("Speech"),
           onPressed: ()=>this.listen(),
         )
       ],
     ),
  
   );
  }
}