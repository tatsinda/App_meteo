import 'dart:math';

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  MeteoPage() {}

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
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
          title: Text('Counter Page'),
        ),
        // floatingActionButton: Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     FloatingActionButton(
        //       child: Icon(Icons.add),
        //     ),
        //     SizedBox(
        //       width: 10,
        //     ),
        //     FloatingActionButton(
        //       child: Icon(Icons.remove),
        //     )
        //   ],
        // ),
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
