import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MEDIA',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(title: 'FUCK OFF'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //body: Center(
        //child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //children: <Widget>[
           // Text(
            //  'you pushed: \n',
           // ),
           // Text(
             // '$_counter',
             // style: Theme.of(context).textTheme.display1,
           // ),
         // ],
       // ),
      //),
      body: StreamBuilder(
        stream: Firestore.instance.collection('media').snapshots(),
      builder:(_incrementCounter,snapshot){
        if (!snapshot.hasData) return const Text('Loading...');
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'you pushed: \n',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            
            ),
          ],
        );
      }
       
      ),   
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.bug_report),
      ), 
    );
  }
}