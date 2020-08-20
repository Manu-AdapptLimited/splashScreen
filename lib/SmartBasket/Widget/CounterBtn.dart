import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 15,
      bottom: 25,
      child: Container(
        height: 30,
        width: 100,
        decoration:
            BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 3,
                  offset: Offset(0.0, 3)

                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(2)),
              ),

        child: Row(
          children: <Widget>[
            Container(
              height: 30,
              width: 30,
              child: Icon(Icons.add,size: 20,),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(2.0),
                    bottomLeft: Radius.circular(2.0),
                  ),
                  color: Colors.grey[300]),
            ),
            Container(
              alignment: Alignment.center,
              height: 30,
              width: 40,
              child: Text('1',style: TextStyle(
                fontSize: 16
              ),),
              decoration: BoxDecoration(color: Colors.grey[300]),
            ),
            Container(
                height: 30,
                width: 30,
                child: Icon(Icons.remove,size: 20,),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(2.0),
                      bottomRight: Radius.circular(2.0),
                    ),
                    color: Colors.grey[300]))
          ],
        ),
      ),
    );
  }
}
