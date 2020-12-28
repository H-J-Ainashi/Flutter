import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()
  => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final title = 'Flutter?';

  @override
  Widget build(BuildContext context)
    => new MaterialApp(
      title: 'what is flutter?',
      home: new MyHomePage(
        title:this.title
      )
    );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title}): super();
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

// Class of Data
class Data {
  int _price;
  String _name;
  Data(this._name, this._price): super();
  @override
  String toString() 
    => _name + ':' + _price.toString() + '円';
}

class _MyHomePageState extends State<MyHomePage> {
  static final _data = [
    Data('Apple', 200),
    Data('Orange', 150),
    Data('Peach', 300)
  ];
  Data _item;

  @override
  void initState() {
    super.initState();
    _item = _data[0];
  }

  void _setData() 
    => setState(() {
      _item = (_data..shuffle()).first;
    });
  
  @override 
  Widget build(BuildContext context) 
    => Scaffold(
      appBar: AppBar(
        title: Text(widget.title)
      ),
      body: Text(
        _item.toString(),
        style: TextStyle(fontSize: 25.0)
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: _setData,
        tooltip: 'setmessage.',
        child: Icon(Icons.access_alarms)
      )
    );
}