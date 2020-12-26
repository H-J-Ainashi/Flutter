import 'package:flutter/material.dart';

void main() 
  => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final title = 'Flutter?';

  @override
  Widget build(BuildContext context) 
    => new MaterialApp(
      title:'what is flutter?',
      home: new MyHomePage(
        title:this.title
      )
    );
}

class MyHomePage extends StatefulWidget{
  MyHomePage({this.title}): super();
  final String title;

  @override
  __MyHomePageState createState()
    => new __MyHomePageState();
}

class __MyHomePageState extends State<MyHomePage> {
  String message;
  @override
  void initState() {
    super.initState();
    message = 'Tap button to know about flutter.';
  }
  void setMessage()
    => setState(() {
      message = 'flutter is programming language.';
    });
  
  @override
  Widget build (BuildContext context)
    => Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white
      ),
      body: Text(
        message,
        style: TextStyle(fontSize:32.0)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: setMessage,
        tooltip: "set message.", 
        child: Icon(Icons.ac_unit_sharp)
      )
    );
}