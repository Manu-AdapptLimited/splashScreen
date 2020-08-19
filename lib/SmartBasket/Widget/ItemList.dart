import 'package:flutter/material.dart';
import 'package:splash_screen/SmartBasket/Model/CategoryList.dart';


class ItemList extends StatelessWidget {
  final itemList;

  const ItemList({Key key, this.itemList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1 + itemList.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Card(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                          top: 8,
                          bottom: 8,
                          left: 19,
                          right: 19,
                        ),
                        child: Text(
                          'ALL',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  }
                  final CategoryList item = itemList[index - 1];
                  return Card(
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        left: 10,
                        right: 10,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        item.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                }),
          );
  }
}