import 'package:flutter/material.dart';

class BeautyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.red[300],
          ),
          onPressed: () {}),
      centerTitle: true,
      backgroundColor: Colors.black,
      title: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: 'the', style: TextStyle(letterSpacing: -1, fontSize: 20)),
        TextSpan(
            text: 'beauty',
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              letterSpacing: -1,
            )),
        TextSpan(
            text: 'store',
            style: TextStyle(
              fontSize: 20,
              letterSpacing: -1,
            ))
      ])),
    );
  }
}
