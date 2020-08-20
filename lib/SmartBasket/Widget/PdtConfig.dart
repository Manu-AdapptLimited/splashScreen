import 'package:flutter/material.dart';

import 'AddBtn.dart';
import 'CounterBtn.dart';
import 'OfferBanner.dart';

// ignore: must_be_immutable
class PdtConfig extends StatelessWidget {
  final image;
  final name;
  final newName;
  final oldPrice;
  final newPrice;
  final offer;
  bool isTapped;
  final date;
  final ratting;
  final rattingPeople;
  bool isInKg;
  final quant;
  PdtConfig(
      {this.image,
      this.name,
      this.newName,
      this.oldPrice,
      this.newPrice,
      this.offer,
      this.date,
      this.ratting,
      this.rattingPeople,
      this.isTapped,
      this.isInKg,
      this.quant});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 2,
      ),
      height: 170,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 10,
            left: 25,
            child: Container(
              height: 120,
              width: 125,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          OfferBanner(
            offer: offer,
          ),
          Positioned(
            right: 0,
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width - 156,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8),
                    child: Text(
                      name,
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      newName,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  isInKg == true
                      ? Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 15),
                          child: Text(
                            '3 L',
                            style: TextStyle(color: Colors.black54),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 15),
                          child: Text(
                            '3 Pcs',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 15),
                    child: RichText(
                        text: TextSpan(
                            text: 'MRP: ',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                            children: [
                          TextSpan(
                            text: oldPrice,
                            style: TextStyle(
                              color: Colors.black54,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8),
                    child: Text(
                      '\Rs $newPrice',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 2,
            child: ClipPath(
              clipper: MyClippers(),
              child: Container(
                padding: EdgeInsets.only(left: 15,top: 2,bottom: 2),
                height: 22,
                width: 140,
                color:  Color.fromRGBO(104, 159, 57, 1),
                child: Text(
                  'Recommended',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          isTapped == true ? CounterButton() : AddButton(),
        ],
      ),
    );
  }
}

class MyClippers extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.height, size.width);
    path.lineTo(size.width - 10, size.height / 2);
    path.lineTo(size.width - 20, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    
    return false;

    
  }
}
