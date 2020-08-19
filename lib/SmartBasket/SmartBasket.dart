import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:splash_screen/SmartBasket/Data/Data.dart';

import 'package:splash_screen/SmartBasket/Widget/ItemList.dart';

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
        slivers: [
          SliverAppBar(
            elevation: 0.0,
            brightness: Brightness.light,
            backgroundColor: Color.fromRGBO(104, 159, 57, 1),
            centerTitle: true,
            leading: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.bars,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {}),
            title: Text('Smart Basket'),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 25,
                  ),
                  onPressed: () {}),
            ],
          ),
          SliverToBoxAdapter(
            child: ItemList(itemList: itemList),
          )
        ],
      ),
    );
  }
}
