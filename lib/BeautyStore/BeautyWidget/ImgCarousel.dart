import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ImgCarousel extends StatefulWidget {
  @override
  _ImgCarouselState createState() => _ImgCarouselState();
}

class _ImgCarouselState extends State<ImgCarousel> {
  @override
  Widget build(BuildContext context) {
    Widget img_carousel = Container(
      margin: EdgeInsets.only(left: 5,right: 5),
      height: 160,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/offer1.png'),
          AssetImage('assets/images/offer2.png'),
          AssetImage('assets/images/offer3.png'),
          AssetImage('assets/images/offer4.jpg'),
          AssetImage('assets/images/offer5.jpg'),
        ],
        autoplay: false,
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(microseconds: 3000),
        dotSize: 8,
        dotColor: Colors.grey[300],
        indicatorBgPadding: 8,
        dotSpacing: 15.0,
        dotIncreaseSize: 1.2,
        dotIncreasedColor:Colors.amber[600] ,
        dotBgColor: Colors.transparent,
        // borderRadius: true,
        overlayShadow: true,

      ),
    );

    return SliverToBoxAdapter(
      child: img_carousel,
    );
  }
}
