import 'package:flutter/material.dart';
import 'package:splash_screen/BeautyStore/BeautyWidget/BbStarBanner.dart';
import 'package:splash_screen/BeautyStore/BeautyWidget/BeautyAppBar.dart';
import 'package:splash_screen/BeautyStore/BeautyWidget/ImgCarousel.dart';
import 'package:splash_screen/BeautyStore/BeautyWidget/ShopByCaregory.dart';

class BeautyStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: [
          BeautyAppBar(),
          BbStarBanner(),
          ImgCarousel(),
          ShopByCategory(),
        
        ],
      ),
    );
  }
}
