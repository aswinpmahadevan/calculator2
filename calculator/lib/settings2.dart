
import 'package:calculator/settings.dart';
import 'package:flutter/material.dart' ;

class Setting2 extends StatefulWidget {
  @override
  _Setting2State createState() => _Setting2State();
}

class _Setting2State extends State<Setting2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WELCOME TO PAGE2"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,

            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    onPressed: () => print("BUG REPORTED"),
                    child: Icon(Icons.bug_report),
                  
                ),
                  ),
                   Expanded(
                  child: RaisedButton(
                    onPressed: () => print("BUG REPORTED"),
                    child: Icon(Icons.bug_report),
                  
                ),
                  ),
                   Expanded(
                  child: RaisedButton(
                    onPressed: () => print("BUG REPORTED"),
                    child: Icon(Icons.bug_report),
                  
                ),
                  ), Expanded(
                  child: RaisedButton(
                    onPressed: () => print("BUG REPORTED"),
                    child: Icon(Icons.bug_report),
                  
                ),
                  ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => Settingpg()
                   ));
                   },
                    child: Icon(Icons.settings_cell),
                ),
                  ),
                  Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => Settingpg()
                   ));
                   },
                    child: Icon(Icons.settings_cell),
                ),
                  ),
                  Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => Settingpg()
                   ));
                   },
                    child: Icon(Icons.settings_cell),
                ),
                  ),
                  Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => Settingpg()
                   ));
                   },
                    child: Icon(Icons.settings_cell),
                ),
                  ),
                  Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => Settingpg()
                   ));
                   },
                    child: Icon(Icons.settings_cell),
                ),
                  ),
                  Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => Settingpg()
                   ));
                   },
                    child: Icon(Icons.settings_cell),
                ),
                  ),
                  Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => Settingpg()
                   ));
                   },
                    child: Icon(Icons.settings_cell),
                ),
                  ),
              ],
            )
          ]
        )
      ),
    );
  }
}
 