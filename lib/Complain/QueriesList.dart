import 'package:flutter/material.dart';

class QueriesList extends StatelessWidget {
  final question;

  const QueriesList({Key key, this.question}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                question,
                softWrap: true,
                style: TextStyle(
                  
                  color: Colors.black54,
                  fontSize: 13,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: Colors.black45,
              ),
            ],
          )),
    );
  }
}
