import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:splash_screen/SmartBasket/Data/Data.dart';
import 'package:splash_screen/SmartBasket/Widget/ItemBuilder.dart';

import 'package:splash_screen/SmartBasket/Widget/ItemList.dart';
import 'package:splash_screen/SmartBasket/Widget/Recommendation.dart';

import 'Widget/AppsBar.dart';

class SmartBasket extends StatefulWidget {
  @override
  _SmartBasketState createState() => _SmartBasketState();
}

class _SmartBasketState extends State<SmartBasket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
         physics: BouncingScrollPhysics(),
        slivers: [
          AppsBar(),
          SliverToBoxAdapter(
            child: ItemList(itemList: itemList),
          ),
          SliverToBoxAdapter(
            child: Recommendation(),
          ),
         
            ItemBuilder(),
        
        ],
      ),
    );
  }
}
