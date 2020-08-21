import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final img;
  final title;
  final isEven;

  const Products({Key key, this.img, this.title, this.isEven})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3,bottom: 3),
      height: 70,
      width: 110,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            color: Colors.black.withOpacity(0.2),
            offset: Offset(2,2)
          )
        ]
      ),
      child: FlatButton(
          color: isEven == true ? Colors.grey[300] : Colors.white,
          padding: EdgeInsets.all(0),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: 70, width: 49, child: Image.asset(img)),
              Container(
                height: 70,
                width: 51,
                alignment: Alignment.center,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
