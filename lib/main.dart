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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // l'entete du drawer
            DrawerHeader(
              child: Center(
                  child: CircleAvatar(
                backgroundImage: AssetImage("./images/shopd.jpg"),
                radius: 50,
              )),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.deepOrange])),
            ),
            //element du Drawer
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(fontSize: 18),
              ),
              leading: Icon(Icons.home), //une iconce a gauche
              trailing: Icon(Icons.arrow_right), // une fleche a droite
              //methode executer apres click sur l'element
              onTap: () {},
            ),
            Divider(color: Colors.deepOrange), //ligne entre les menu
            //element du Drawer
            ListTile(
              title: Text(
                'Meteo',
                style: TextStyle(fontSize: 18),
              ),
              leading: Icon(Icons.map), //une iconce a gauche
              trailing: Icon(Icons.arrow_right), // une fleche a droite
              //methode executer apres click sur l'element
              onTap: () {},
            ),
            Divider(
              color: Colors.deepOrange,
            ), //ligne entre les menu
            //element du Drawer
            ListTile(
              title: Text(
                'Gallery',
                style: TextStyle(fontSize: 18),
              ),
              leading: Icon(Icons.image), //une iconce a gauche
              trailing: Icon(Icons.arrow_right), // une fleche a droite
              //methode executer apres click sur l'element
              onTap: () {},
            ),
            Divider(
              color: Colors.deepOrange,
            ),
          ],
        ),
      ),
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
