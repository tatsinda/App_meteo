import 'package:flutter/material.dart';

class DrawerHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DrawerHeader(
      child: Center(
          child: CircleAvatar(
        backgroundImage: AssetImage("./images/shopd.jpg"),
        radius: 50,
      )),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white, Colors.deepOrange])),
    );
  }
}
