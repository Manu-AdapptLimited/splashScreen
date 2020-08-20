import 'package:flutter/material.dart';

class Topic extends StatelessWidget {
  final String topic;

  const Topic({Key key, this.topic}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 15),
        child: Text(
          topic,
          style: TextStyle(
              fontSize: 15, 
              color: Colors.black45, 
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
