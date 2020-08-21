import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BbStarBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 80,
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            color: Colors.green[400]),
        child: Stack(
          children: [
            Positioned(
              top: 6,
              left: 8,
              bottom: 6,
              child: Container(
                width: MediaQuery.of(context).size.width - 36,
                height: 65,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.green.withOpacity(0.9),
                        offset: Offset(0.0, 5),
                      )
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.caretRight,
                      color: Colors.grey[600],
                    ),
                    Image.asset('assets/images/bbstar.jpg'),
                    Column(
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'Extra',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: '10% ' ,
                              style: TextStyle(
                                  fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'off',
                              style: TextStyle(
                                  fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            )
                          ]),
                        ),
                        RichText(text: TextSpan(
                          children: [
                             TextSpan(
                              text: 'code:',
                              style: TextStyle(
                                  fontSize:14,
                                    fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                             TextSpan(
                              text: 'BBSTAR10',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            )

                          ]
                        )),
                        Container(
                          margin: EdgeInsets.only(top: 2),
                          height: 15,
                          child: RaisedButton(
                            elevation: 7.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            color: Colors.green[300],
                            onPressed: (){},
                            child: Text('SIG UP NOW',
                             style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    FaIcon(
                      FontAwesomeIcons.caretLeft,
                      color: Colors.grey[600],
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
