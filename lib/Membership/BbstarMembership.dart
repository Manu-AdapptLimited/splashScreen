import 'dart:ui';

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:splash_screen/Membership/CashBack.dart';
import 'package:splash_screen/Membership/JoinOffer.dart';
import 'package:splash_screen/Membership/MembershipAppBar.dart';

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
                    // Positioned(
                    //   left: 70,
                    //   top: 20,
                    //   child: Container(
                    //       height: 210,
                    //       child: Image.asset('assets/images/members.gif',
                    //           fit: BoxFit.cover)),
                    // ),
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

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint()
      // ..maskFilter =MaskFilter.blur(BlurStyle.inner, 10.0)
      ..strokeWidth = 2.2
      ..isAntiAlias = true
      ..style = PaintingStyle.stroke
      ..color = Colors.black;

    Rect rect = new Rect.fromCircle(
      center: new Offset(165.0, 55.0),
      radius: 180.0,
    );

    // first curve gradient
    final Gradient gradient = new LinearGradient(
        end: Alignment.bottomLeft,
        begin: Alignment.topRight,
        colors: <Color>[
          Color.fromRGBO(104, 159, 57, 1),
          Colors.yellowAccent,
        ],
        stops: [
          0.2,
          1.0
        ]);
    final Paint paints = new Paint()..shader = gradient.createShader(rect);

    //gradient for half circle
    final Gradient circleGradient = LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromRGBO(149, 194, 60, 1),
          Color.fromRGBO(33, 195, 145, 0.6)
        ],
        stops: [
          0.8,
          1.0
        ]);
    final Paint circlePaint = Paint()
      ..shader = circleGradient.createShader(rect);

    //second curve gradient

    final Gradient curveGradient = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromRGBO(104, 159, 57, 1),
          Color.fromRGBO(33, 195, 145, 0.6)
        ],
        stops: [
          0.5,
          1.0
        ]);

    final Paint curvePaint = Paint()..shader = curveGradient.createShader(rect);

    Path mainBackGround = Path();
    mainBackGround.addRect(Rect.fromLTRB(0, 0, width, height));
    // paint.color = Color.fromRGBO(104, 159, 57, 1);
    paint.color = Colors.white;
    // paint.style = PaintingStyle.fill;
    canvas.drawPath(mainBackGround, paint);
    //Half circle diamension
    var halfCircle = Offset(0, height * 0.22);
    canvas.drawCircle(halfCircle, 60, circlePaint);

    // Path ovalPath = Path();
    // ovalPath.moveTo(width, 250);
    // ovalPath.quadraticBezierTo(width - 80, 290, width - 40, 190);
    // ovalPath.quadraticBezierTo(width - 20, 150, width - 70, 140);
    // ovalPath.quadraticBezierTo(width-150, 130, width - 120, 90);
    // canvas.drawPath(ovalPath, paint);

    //firstcurve diamension
    Path curvePath = Path();
    curvePath.moveTo(width, 155);
    curvePath.quadraticBezierTo(width - 65, 195, width - 43, 120);
    curvePath.quadraticBezierTo(width - 30, 65, width - 80, 60);
    curvePath.quadraticBezierTo(width - 150, 60, width - 100, 0);
    curvePath.lineTo(width, 0);
    curvePath.close();
    canvas.drawPath(curvePath, paints);

    //secondcurve diamension
    Path curvy = Path();
    curvy.moveTo(width, 190);
    curvy.quadraticBezierTo(width - 75, 220, width - 80, 165);
    curvy.quadraticBezierTo(width - 65, 90, width - 135, 75);
    curvy.quadraticBezierTo(width - 180, 35, width - 100, 0);
    curvy.moveTo(width - 100, 0);
    curvy.quadraticBezierTo(width - 150, 60, width - 80, 60);
    curvy.quadraticBezierTo(width - 30, 65, width - 43, 120);
    curvy.quadraticBezierTo(width - 65, 195, width, 155);
    curvy.lineTo(width, 190);
    curvy.close();
    canvas.drawPath(curvy, curvePaint);
//bottom curve
    final Gradient bottomCurveGradient = LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          Color.fromRGBO(140, 200, 71, 0.6),
          Color.fromRGBO(63, 187, 115, 1),
        ],
        stops: [
          0.0,
          1.0
        ]);

    final Paint bottomCurvePaint = Paint()
      ..shader = bottomCurveGradient.createShader(rect);
    Path bottomCurve = Path();
    bottomCurve.moveTo(0, 610);
    bottomCurve.quadraticBezierTo(70, 565, 60, 660);
    bottomCurve.cubicTo(40, 760, 200, height - 90, 130, height);
    bottomCurve.lineTo(0, height);
    bottomCurve.close();
    canvas.drawPath(bottomCurve, bottomCurvePaint);
//coupon banner
    Path couponPath = Path();
    couponPath.moveTo(30, 610);
    couponPath.lineTo(30, 620);
    couponPath.quadraticBezierTo(45, 630, 30, 640);
    couponPath.lineTo(30, 650);
    couponPath.lineTo(62, 650);
    couponPath.lineTo(70, 644);
    couponPath.lineTo(76, 650);
    couponPath.lineTo(330, 650);
    couponPath.lineTo(330, 640);
    couponPath.quadraticBezierTo(315, 628, 330, 620);
    couponPath.lineTo(330, 610);
    couponPath.lineTo(76, 610);
    couponPath.lineTo(70, 617);
    couponPath.lineTo(60, 610);
    // paint.color = Color.fromRGBO(60, 90, 30, 0.5);
    // paint.style = PaintingStyle.fill;
    couponPath.close();
    canvas.drawPath(couponPath, paint);

    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: 15,
    );
    final textSpan = TextSpan(
      text: 'Proceed to see available copons',
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    final offset = Offset(85, 620);
    textPainter.paint(canvas, offset);

    final icon = Icons.star;
    TextPainter textPainters = TextPainter(textDirection: TextDirection.rtl);
    textPainters.text = TextSpan(
        text: String.fromCharCode(icon.codePoint),
        style: TextStyle(fontSize: 20.0, fontFamily: icon.fontFamily));
    textPainters.layout();
    textPainters.paint(canvas, Offset(41.0, 620.0));

    Path rectPath = Path();

    final Gradient rectGradient = LinearGradient(
        // begin: Alignment.topLeft,
        // end: Alignment.bottomRight,
        colors: [
          Color.fromRGBO(104, 159, 57, 1),
          Color.fromRGBO(244, 134, 44, 1),
          Color.fromRGBO(160, 157, 52, 1),
          Color.fromRGBO(104, 159, 57, 1),
          Color.fromRGBO(250, 197, 78, 1),
        ], stops: [
      0.2,
      0.3,
      0.4,
      0.7,
      0.9
    ]);
    Paint rectPaint = Paint()
      ..strokeWidth = 13
      ..color = Colors.black
      ..shader = rectGradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    rectPath.moveTo(129, 40);
    rectPath.lineTo(90, 80);
    canvas.drawPath(rectPath, rectPaint);

    Path circlePath = Path();
    final Gradient cirGradient = LinearGradient(
      // begin: Alignment.topLeft,
      // end: Alignment.bottomRight,
      colors: [
        Color.fromRGBO(104, 159, 57, 1),
        Color.fromRGBO(244, 134, 44, 1),
        Color.fromRGBO(160, 157, 52, 1),
        Color.fromRGBO(104, 159, 57, 1),
      ],
    );
    Paint cirPaint = Paint()
      ..strokeWidth = 4
      ..color = Colors.black
      ..shader = cirGradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    circlePath.moveTo(90, 40);
    canvas.drawCircle(Offset(90, 40), 6, cirPaint);

    Paint ciPaint = Paint()
      ..strokeWidth = 2
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    circlePath.moveTo(200, 300);
    paint.color = Colors.white;
    canvas.drawCircle(Offset(240, 210), 4, ciPaint);

    Path linePath = Path();
    paint.color = Colors.black;
    // canvas.drawPath(linePath, paint);

    // var radius = 100;
    // var sides = 4;

    // var angle = (math.pi * 2) / sides;

    // Offset center = Offset(175, 140);
    // Offset startPoint = Offset(radius * math.cos(0.0), radius * math.sin(0.0));
    // linePath.moveTo(startPoint.dx + center.dx, startPoint.dy + center.dy);

    // for (int i = 1; i <= sides; i++) {
    //   double x = radius * math.cos(angle * i) + center.dx;
    //   double y = radius * math.sin(angle * i) + center.dy;
    //   linePath.lineTo(x, y);
    // }
    // linePath.close();

    // linePath.moveTo(165, 50);
    linePath.moveTo(160, 50);
    linePath.lineTo(90, 125);
    linePath.quadraticBezierTo(75, 140, 90, 155); //second corner
    linePath.lineTo(160, 226);
    linePath.moveTo(190, 226);
    linePath.lineTo(260, 155);
    linePath.moveTo(260, 125);
    linePath.lineTo(188, 50);
    linePath.moveTo(160, 50);
    linePath.quadraticBezierTo(175, 35, 188, 50); //first corner
    linePath.moveTo(160, 226);
    linePath.quadraticBezierTo(175, 242, 190, 226); //third corner
    linePath.moveTo(260, 155);
    linePath.quadraticBezierTo(276, 140, 260, 125); //fourth corner
    linePath.moveTo(260, 125);
    linePath.close();
    linePath.moveTo(155, 40);
    linePath.lineTo(80, 120);
    linePath.quadraticBezierTo(60, 138, 78, 158);
    linePath.moveTo(78, 158);
    linePath.lineTo(150, 230);
    linePath.quadraticBezierTo(160, 240, 173, 233);

    linePath.moveTo(155, 40);
    // linePath.quadraticBezierTo(x1, y1, x2, y2)

    canvas.drawPath(linePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
