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
          title: Text('Meteo Page'),
        ),
        body: Column(
          children: <Widget>[
            // envelloper dansun padding
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Counter Value: ${counter} , Rnd value ${randomValue}',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            //enlopper dans un container pour structurer
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8), //un padding de 8
              child: ElevatedButton(
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
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text(
                    'Decrementer',
                  ),
                  onPressed: () {
                    //changement du state
                    setState(() {
                      --counter;
                    });
                  },
                ),
              ),
            )
          ],
        ));
  }
}
