import 'package:flutter/material.dart';
import 'package:speech_recognition/speech_recognition.dart';
class  Util{
  
  void listen(){
    var word = "";
    SpeechRecognition _speech = new SpeechRecognition();
    _speech.setRecognitionStartedHandler(()=>true);
    _speech.listen(locale: "es_CL").then((r) => word=r);
  }
}