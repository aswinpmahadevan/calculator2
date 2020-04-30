import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CALCULATOR',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Homepage(),
    );
 }
}
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

int firnum;
int secnum;
String texttodisplay ="";
String res;
String operationperform;


void btnclk(String btntext){
if(btntext == "C"){
  texttodisplay = "";
  firnum = 0;
  secnum = 0;
  res = "";
  }else if(btntext=="+"||btntext=="-"||btntext=="x"||btntext=="/"){ 
  firnum = int.parse(texttodisplay);
  res ="";
  operationperform = btntext;
  }
  else if(btntext=="="){
    secnum=int.parse(texttodisplay);
    if(operationperform=="+"){
      res=(firnum + secnum).toString();
    }
     if(operationperform=="-"){
      res=(firnum - secnum).toString();
    }
     if(operationperform=="x"){
      res=(firnum * secnum).toString();
    }
     if(operationperform=="/"){
      res=(firnum ~/ secnum).toString();
    }
  }else{
    res = int.parse(texttodisplay + btntext).toString();
  }
  setState(()    {
    texttodisplay = res;

  });
}

Widget cusbut(String btv){
      return Expanded(
                child: RaisedButton(
                  onPressed: () => btnclk(btv),
                  child: Text(
                    "$btv",
                  ),
                ),
              );
}  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar( 
        title: Text("CALCULATOR \n by aswin p"
        ),
      ),
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child:Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  "$texttodisplay \t ",
            ),
          ),
        ), 
          Row(
            children: <Widget>[
              cusbut("9"),
              cusbut("8"),
              cusbut("7"),
              cusbut("+"),
            ],
          ),
          Row(
            children: <Widget>[
              cusbut("6"),
              cusbut("5"),
              cusbut("4"),
              cusbut("-"),
            ],
          ),
          Row(
            children: <Widget>[
              cusbut("3"),
              cusbut("2"),
              cusbut("1"),
              cusbut("x"),
            ],
          ),
          Row(
            children: <Widget>[
              cusbut("C"),
              cusbut("0"),
              cusbut("="),
              cusbut("/"),
            ],
          ),
        ],
        ),
      ),
    );
  }
}