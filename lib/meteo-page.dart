import 'dart:math';

import 'package:flutter/material.dart';

class MeteoPage extends StatefulWidget {
  MeteoPage() {}

  @override
  State<MeteoPage> createState() => _MeteoPageState();
}

class _MeteoPageState extends State<MeteoPage> {
  int counter = 0;
  int randomValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Meteo Page'),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Counter Value: ${counter} , Rnd value ${randomValue}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            ElevatedButton(
              child: Text(
                'Incrementer',
              ),
              //methode executer apres click sur le button
              onPressed: () {
                //changement du state
                setState(() {
                  ++counter;
                  randomValue = new Random().nextInt(100);
                });
              },
            ),
            ElevatedButton(
              child: Text(
                'Decrementer',
              ),
              onPressed: () {
                //changement du state
                setState(() {
                  --counter;
                });
              },
            )
          ],
        ));
  }
}
