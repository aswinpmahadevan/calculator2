import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:storeui2/carlouse.dart';



class Oil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget>[ 
        SizedBox(
          height: 350.0,
          width: 409.0,
          child: Carousel(
            boxFit: BoxFit.cover,
            autoplay: false,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.topRight,
            dotVerticalPadding: 1.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,
            images: [
             
              ExactAssetImage("images/oil1.jpg"),
              ExactAssetImage("images/oil2.jpeg"),
              ExactAssetImage("images/oil3.jpeg"),
              
            ],
          ),
        ),
    Text("    OIL [ENNA]",
    style: TextStyle(
      fontSize:30,
    ),
    ),

    FlatButton(onPressed:  ()=> Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) =>CarouselPage())),
                      child: Text("ADD"),
                      color: Colors.red,
                      ),

        ]
        ),
      ),
      
    );
  }
}