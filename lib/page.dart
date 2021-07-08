import 'package:flutter/material.dart';

class FlutterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (title: Text (" Flutter page ")),
      body: ListView(
        children: [
          Container (
            width: double.infinity,
            height: 190,
            child:  Center (
              child: Hero (
                tag: 'to',
                  child: Image.asset("assets/samir.jpeg")
              ),
            ),
          )
        ],
      ),
    );
  }
}
