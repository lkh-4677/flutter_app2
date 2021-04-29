import 'package:flutter/material.dart';
import 'package:flutter_app3/5120184677/_login_4677.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '实验1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('第xx小组实验一'),
        ),
        body: MyWidget(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }

}

class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RaisedButton(
              child: Text('5120184677李康槐'),
              onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>login4677()));},
          ),

        ],
      )
    );
  }
}
