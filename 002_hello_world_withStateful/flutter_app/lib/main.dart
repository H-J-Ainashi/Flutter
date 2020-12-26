import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';

void main()
  => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final title = "Start";
  final message = "Do you know F.L.U.T.T.E.R?";

  @override
  Widget build(BuildContext context)
    => new MaterialApp(
      title: "Flutter Starter paq",
      home: new MyHomePage(
        title:    this.title,
        message:  this.message,
      )
    );
}

class MyHomePage extends StatefulWidget {
  final String title;
  final String message;
  MyHomePage({this.title, this.message}): super();

  @override
  _MyHomePageState createState()
    => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context)
    => Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      body: Text(
        widget.message,
        style: TextStyle(fontSize: 32.0)
      )
    );
}