import 'package:flutter/material.dart';

class SearchBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 8),
        child: FlatButton.icon(
          color: Colors.white,
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.black54,
          ),
          label: Text(
            'Search a question',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            // side: BorderSide(color: Colors.red)
          ),
        ),
      ),
    );
  }
}
