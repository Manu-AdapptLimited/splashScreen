import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppsBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
    
      floating: true,
      snap: true,
     
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
    );
  }
}
