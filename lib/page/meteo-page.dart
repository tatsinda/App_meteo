import 'dart:math';

import 'package:flutter/material.dart';

class MeteoPage extends StatefulWidget {
  static String city = "";
  MeteoPage() {}

  @override
  State<MeteoPage> createState() => _MeteoPageState();
}

class _MeteoPageState extends State<MeteoPage> {
  int counter = 0;
  int randomValue = 0;

  //executer a chaque fois que le state est instancier
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Initialisation"); //execution
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Meteo Page -> ${MeteoPage.city}'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(hintText: 'Taper une ville'),
                  onChanged: (value) {
                    setState(() {
                      MeteoPage.city = value;
                    });
                  },
                ),
              ),
            ),
            Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text(
                      'Get meteo',
                      style: TextStyle(fontSize: 22),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/MeteoDetails');
                    },
                  ),
                ))
          ],
        ));
  }
}
