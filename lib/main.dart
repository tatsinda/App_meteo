import 'package:first_app_bdcc/main-drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.deepOrange)),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //la barre de menu
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('blanc'),
      ),
      body: Center(
        child: Text(
          'leroy blanc',
          style: TextStyle(fontSize: 22, color: Colors.blue),
        ),
      ),
    );
  }
}
