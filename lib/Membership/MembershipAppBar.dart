import 'package:flutter/material.dart';

class MembershipAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      brightness: Brightness.light,
      backgroundColor: Color.fromRGBO(104, 159, 57, 1),
      centerTitle: true,
      elevation: 0.0,
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () {}),
      title: Text(
        'bbstar Membership',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
