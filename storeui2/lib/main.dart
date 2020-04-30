import 'package:flutter/material.dart';
import 'package:image_auto_slider/image_auto_slider.dart';
import 'package:storeui2/carlouse.dart';
import 'package:storeui2/dal.dart';
import 'package:storeui2/oil.dart';
import 'package:storeui2/rice.dart';
import 'package:storeui2/sugar.dart';
import 'package:storeui2/ulnd.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'AMBADI STORES'),
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
      body: SingleChildScrollView(
         child: Column(
          
          
          children: <Widget>[
            
          
            
            ImageAutoSlider(
              assetImages: [
                AssetImage('images/img1.jpeg'),
                AssetImage('images/img2.jpeg'),
                AssetImage('images/img3.jpeg')
              ],
              imageHeight: 360,
              boxFit: BoxFit.fitHeight,
              slideMilliseconds: 700,
              durationSecond: 3,
            ),

           
           

          SizedBox(
          height: 250,
          width: 300,
          
          child:FlatButton(onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) =>Rice(),
        )), child:Image.asset('images/rice1.jpeg'),
        
        ),),

        SizedBox(
          height: 250,
          width: 300,
          
          child:FlatButton(onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) =>Ulnd(),
        )), child:Image.asset('images/ulnd1.jpg'),
        
        ),),

        SizedBox(
          height: 250,
          width: 300,
          
          child:FlatButton(onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) =>Dal(),
        )), child:Image.asset('images/dal1.jpeg'),
        
        ),),


        SizedBox(
          height: 250,
          width: 300,
          
          child:FlatButton(onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) =>Sugar(),
        )), child:Image.asset('images/sugar1.jpeg'),
        
        ),),

        SizedBox(
          height: 250,
          width: 300,
          
          child:FlatButton(onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) =>Oil(),
        )), child:Image.asset('images/oil1.jpg'),
        
        ),),



        

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) =>CarouselPage(),
        )),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
