import 'package:flutter/material.dart';

class JoinOffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.only(top: 0,bottom: 10),
      
      width: MediaQuery.of(context).size.width - 20,
      decoration: BoxDecoration(
        color: Color.fromRGBO(60, 90, 30, 0.8),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Join at a special price of just',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    'Rs 599',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Rs 299 ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '/ 6 months',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 17,
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
