import 'package:flutter/material.dart';

class Recommendation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15,bottom: 8),
      child: Column(
        children: [
          Text(
            'Our Recommendations For You',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              // letterSpacing: 0.3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              'Bassed on what customer like yo have bought',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[700],
              ),
            ),
          )
        ],
      ),
    );
  }
}
