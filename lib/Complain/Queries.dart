import 'package:flutter/material.dart';

import 'package:splash_screen/Complain/SearchBtn.dart';
import 'package:splash_screen/Complain/Topic.dart';
import 'package:splash_screen/Complain/suggetionBox.dart';
import 'ContactUs.dart';
import 'RelatedQueries.dart';

class Queries extends StatefulWidget {
  @override
  _QueriesState createState() => _QueriesState();
}

class _QueriesState extends State<Queries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: true,
            centerTitle: true,
            backgroundColor: Color.fromRGBO(104, 159, 57, 1),
            leading: Icon(Icons.arrow_back_ios),
            title: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text:
                      'I didn`t recieve my order, but I got an SMS statting it is delivered',
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ])),
          ),
          SearchBtn(),
          SuggetionBox(),
          Topic(topic: 'Related Queries',),
          RelatedQueries(),
          Topic(topic: 'Contact Us',),

          ContactUs(),
          SliverToBoxAdapter(
            child: SizedBox(height: 30,))


           
        ],
      ),
    );
  }
}
