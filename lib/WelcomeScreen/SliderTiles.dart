import 'package:flutter/material.dart';

class SlideTiles extends StatelessWidget {
  String imagePath, title, desc;

  SlideTiles({this.imagePath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              height: 180,
              width: MediaQuery.of(context).size.width-40,

              child: Image.asset(
                imagePath,
              ),
            ),
          SizedBox(
            height: 60,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red[600],
              fontWeight: FontWeight.w500, fontSize: 22),
          ),
          SizedBox(
            height: 25,
          ),
          Text(desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.6,
                color: Colors.black54,

                fontWeight: FontWeight.w600, 
                fontSize: 15))
        ],
      ),
    );
  }
}
