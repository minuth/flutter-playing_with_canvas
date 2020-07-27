import 'package:flutter/material.dart';
import 'package:playing_with_canvas/widget/circle_frame.dart';
import 'package:playing_with_canvas/widget/circle_travell.dart';
import 'package:playing_with_canvas/widget/google_icon.dart';
import 'package:playing_with_canvas/widget/pei_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Playing with Canvas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: CircleFrame(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Animate',
        child: Icon(Icons.sync),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
