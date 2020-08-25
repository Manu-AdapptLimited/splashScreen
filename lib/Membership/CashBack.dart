import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CashBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        padding: EdgeInsets.only(left: 15,bottom: 10),
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Column(
          children: [
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.truck,
                color: Color.fromRGBO(104, 159, 57, 0.8),
              ),
              title: Text(
                'No Delivery Charge',
                style: TextStyle(
                  color: Color.fromRGBO(104, 159, 57, 1),
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                'On orders above Rs 600',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.rupeeSign,
                color: Color.fromRGBO(104, 159, 57, 0.8),
              ),
              title: Text(
                'Rs 300 Cashback',
                style: TextStyle(
                  color: Color.fromRGBO(104, 159, 57, 1),
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                'Rs 100 Cashback on first of\nany 3 months',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.calendarCheck,
                color: Color.fromRGBO(104, 159, 57, 0.8),
              ),
              title: Text(
                'Access to Priority Slots ',
                style: TextStyle(
                  color: Color.fromRGBO(104, 159, 57, 1),
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                'bbstar members always get',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
