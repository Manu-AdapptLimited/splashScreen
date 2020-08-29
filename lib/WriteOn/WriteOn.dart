import 'package:flutter/material.dart';

import 'ColorPainter.dart';

class WriteOn extends StatefulWidget {
  @override
  _WriteOnState createState() => _WriteOnState();
}

class _WriteOnState extends State<WriteOn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(229, 125, 134, 1),
        body: CustomPaint(
            painter: ColorPainter(),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset('assets/images/sendayo.jpg')),
                     
                  ],
                ),
              ),
            )));
  }
}
