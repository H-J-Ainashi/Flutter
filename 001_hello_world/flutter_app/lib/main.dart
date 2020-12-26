import "package:flutter/material.dart";

void main() => runApp(new HelloWorld());

class HelloWorld extends StatelessWidget {
  @override 
  Widget build(BuildContext context)
    => new MaterialApp(
      title: "001 - Hello world",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello world, flutter."),
          backgroundColor: Colors.orangeAccent,
          foregroundColor: Colors.white,
        ),        
        body: Text(
          "Hello world, flutter.\n" + 
          "How long do you think the world's width, flutter?",
          style: TextStyle(
            fontSize: 25.0
            )
        ),
      )
    );

}