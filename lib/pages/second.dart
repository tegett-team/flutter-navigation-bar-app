import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Center(
          child: Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.watch_later,
                size: 99,
                color: Colors.white,
              ),
              Text(
                "Segundo Tab",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
