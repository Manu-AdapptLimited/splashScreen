import 'package:flutter/material.dart';
import 'package:splash_screen/Complain/QueriesList.dart';

import 'Constant.dart';

class RelatedQueries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 200,
        margin: margin,
        width: MediaQuery.of(context).size.width,
        decoration: decoration,
        child: Column(
          children: [
            QueriesList(
              question: 'I have not yet recieve my order',
            ),
            Divider(
              height: 0,
              color: Colors.grey[200],
              thickness: 2.5,
              endIndent: 25,
            ),
             QueriesList(
              question: 'I want to change the delivery slot',
            ),
            Divider(
              height: 0,
              color: Colors.grey[200],
              thickness: 2.5,
              endIndent: 25,
            ),
             QueriesList(
              question: 'I want to cancel my order',
            ),
            Divider(
              height: 0,
              color: Colors.grey[200],
              thickness: 2.5,
              endIndent: 25,
            ),
             QueriesList(
              question: 'I want to add a product to may existing order',
            ),
           
          ],
        ),
      ),
    );
  }
}
