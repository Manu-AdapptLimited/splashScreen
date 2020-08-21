import 'package:flutter/material.dart';

import 'package:splash_screen/BeautyStore/BeautyWidget/Products.dart';
import 'package:splash_screen/BeautyStore/model/BeautModel.dart';

class ShopByCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return SliverToBoxAdapter(
      child: Container(
        
        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                  blurRadius: 6,
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(5, 5))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.red[300],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 12,
                    left: 19,
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Positioned(
                      right: 19,
                      top: 12,
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 30,
                      )),
                  Positioned(
                      top: 5,
                      left: 50,
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: MediaQuery.of(context).size.width - 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.black),
                        child: Text(
                          'Shop by Category',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      )),
                ],
              ),
            ),
            Wrap(
              children: [
                Products(img: products[0].img,title: products[0].title,isEven: products[0].isEven,),
                Products(img: products[1].img,title: products[1].title,isEven: products[1].isEven,),
                Products(img: products[2].img,title: products[2].title,isEven: products[2].isEven,),
                Products(img: products[3].img,title: products[3].title,isEven: products[3].isEven,),
                Products(img: products[4].img,title: products[4].title,isEven: products[4].isEven,),
                Products(img: products[5].img,title: products[5].title,isEven: products[5].isEven,),
                 Products(img: products[6].img,title: products[6].title,isEven: products[6].isEven,),
                Products(img: products[7].img,title: products[7].title,isEven: products[7].isEven,),
                Products(img: products[8].img,title: products[8].title,isEven: products[8].isEven,),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
