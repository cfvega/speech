import 'package:flutter/material.dart';
import 'package:speech/pages/index.dart';
void main() {
  runApp(new MaterialApp(
   home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
 }
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: new AppBar(title: new Text("Speech Recognition"),),
     body: new Index(),  
   );
  }
}