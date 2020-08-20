import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Constant.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        margin: margin,
        decoration: decoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.phone_in_talk, color: Colors.black54),
                label: Text(
                  'Call Us',
                   style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                )),
            FlatButton.icon(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.comments, color: Colors.black54),
                label: Text(
                  'Ask Us',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
