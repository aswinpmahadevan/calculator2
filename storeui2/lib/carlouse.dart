import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';



class CarouselPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        child: SizedBox(
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
              NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
              NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
              ExactAssetImage("images/img1.jpeg"),
              ExactAssetImage("images/img2.jpeg"),
              ExactAssetImage("images/img3.jpeg"),
            ],
          ),
        ),
      ),
    );
  }
}