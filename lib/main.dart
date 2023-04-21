import 'package:first_app_bdcc/page/gallery-page.dart';
import 'package:first_app_bdcc/page/meteo-page.dart';
import 'package:first_app_bdcc/page/quiz-page.dart';
import 'package:first_app_bdcc/widget/main-drawer.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/meteo": (context) => MeteoPage(),
      "/gallery": (context) => GalleryPage(),
      "/quiz": (context) => QuizPage()
    },
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
