import 'package:flutter/material.dart';
import 'package:splash_screen/Complain/Constant.dart';

class SuggetionBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: margin,
        padding: EdgeInsets.only(left: 8, right: 8, top: 10),
        height: 160,
        width: MediaQuery.of(context).size.width,
        decoration:decoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'I didn`t recieve my order, but I got an SMS statting it is delivered',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54)),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                  'We are sorry to know that you faced this issue. We reuest you to kindly reach out to our customer servies team. You can all us or chat with us using our "Ask Us" services. We will resolve the issue at the earliest.',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black54)),
            )
          ],
        ),
      ),
    );
  }
}
