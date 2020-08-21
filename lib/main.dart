import 'package:flutter/material.dart';
import 'package:splash_screen/BeautyStore/BeautyStore.dart';
import 'package:splash_screen/Complain/Queries.dart';
import 'package:splash_screen/CoustumerService/Service.dart';
import 'package:splash_screen/Faqs/Faq.dart';

import 'SmartBasket/SmartBasket.dart';
import 'WelcomeScreen/WelcomeScreen.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Faq(),
    );
  }
}



