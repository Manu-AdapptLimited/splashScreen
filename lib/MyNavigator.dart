import 'package:flutter/material.dart';

class MyNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.shopping_cart),
          )
        ],
        title: Text('SplashScreen'),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 15,
              spreadRadius: -5,
              offset: Offset(10,10)
            )
            ],
            border: Border.all(),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.green, Colors.yellow],
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Text(
          "My home",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white),
        ),
      )),
      drawer: Drawer(),
    );
  }
}
