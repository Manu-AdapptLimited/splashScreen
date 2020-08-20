import 'package:flutter/material.dart';


class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
                  right: 15,
                  bottom: 25,
                  child: Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: RaisedButton(
                      color: Colors.red[300],
                      onPressed: () {},
                      child: Text(
                        'ADD',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
  }
}