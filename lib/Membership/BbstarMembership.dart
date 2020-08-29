import 'dart:ui';

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:splash_screen/Membership/CashBack.dart';
import 'package:splash_screen/Membership/JoinOffer.dart';
import 'package:splash_screen/Membership/MembershipAppBar.dart';
import 'package:splash_screen/Membership/MyPainter.dart';

class BbstarMembership extends StatefulWidget {
  @override
  _BbstarMembershipState createState() => _BbstarMembershipState();
}

class _BbstarMembershipState extends State<BbstarMembership> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MembershipAppBar(),
          SliverToBoxAdapter(
            child: CustomPaint(
              child: Container(
                height: 800,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                      left: 120,
                      top: 95,
                      child: Container(
                          height: 50,
                          child: Image.asset('assets/images/bbstar2.png',
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                        left: 40,
                        top: 40,
                        child: Icon(
                          Icons.star,
                          size: 18,
                          color: Colors.white,
                        )),
                    Positioned(
                      right: 25,
                      top: 40,
                      child: Icon(
                        Icons.add,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.41,
                      child: Column(
                        children: [
                          JoinOffer(),
                          CashBack(),
                          Padding(
                            padding: const EdgeInsets.only(top: 90),
                            child: Container(
                                height: 45,
                                width: MediaQuery.of(context).size.width - 20,
                                child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    color: Colors.red[300],
                                    onPressed: () {},
                                    child: Text(
                                      'Join Now',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Text(
                              'You can cancel anytime within first 15 days',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              painter: MyPainter(),
            ),
          )
        ],
      ),
    );
  }
}


