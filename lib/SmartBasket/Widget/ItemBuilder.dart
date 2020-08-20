
import 'package:flutter/material.dart';

import 'PdtConfig.dart';

class ItemBuilder extends StatefulWidget {
  @override
  _ItemBuilderState createState() => _ItemBuilderState();
}

class _ItemBuilderState extends State<ItemBuilder> {
  var items = [
    {
      "image": "assets/images/4.jpg",
      "name": "VIM",
      "newName": "Dishwash Liquid Gel - Lemon",
      "oldPrice": "155",
      "newPrice": "119",
      "offer": "23%",
      "isTapped": true,
      "date": "18-Apr-2020",
      "ratting": "4.4",
      "rattingPeople": "15268",
      "isInKg": false,
    },
    {
      "image": "assets/images/5.webp",
      "name": "FRESHO",
      "newName": "Oil",
      "oldPrice": "55",
      "newPrice": "50",
      "offer": "9%",
      "isTapped": false,
      "date": "19-Apr-2020",
      "quant": "1",
      "isInKg": true,
      "ratting": "4.4",
    },
  
    
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate((context,index){
      return PdtConfig(
            image: items[index]['image'],
            name: items[index]['name'],
            newName: items[index]['newName'],
            oldPrice: items[index]['oldPrice'],
            newPrice: items[index]['newPrice'],
            offer: items[index]['offer'],
            isTapped: items[index]['isTapped'],
            date: items[index]['date'],
            ratting: items[index]['ratting'],
            rattingPeople: items[index]['rattingPeople'],
            isInKg: items[index]['isInKg'],
            quant: items[index]['quant'],
          );
    },
    childCount: items.length,
    
    ));
  }
}
