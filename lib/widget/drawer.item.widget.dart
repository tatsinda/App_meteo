import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  String itemTitle;

  Icon leadingIcon;
  String route;

  DrawerItemWidget(String itemTitle, Icon leadingIcon, String route) {
    this.itemTitle = itemTitle;

    this.leadingIcon = leadingIcon;
    this.route = route;
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        itemTitle,
        style: TextStyle(fontSize: 18),
      ),
      leading: leadingIcon, //une iconce a gauche
      trailing: Icon(Icons.arrow_right), // une fleche a droite
      //methode executer apres click sur l'element
      onTap: (() {
        Navigator.pop(context);
        Navigator.pushNamed(context, route);
      }),
    );
  }
}
