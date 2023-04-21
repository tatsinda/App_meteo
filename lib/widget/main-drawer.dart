import 'package:first_app_bdcc/globalParameter/globalParameterItemDrawer.dart';
import 'package:first_app_bdcc/widget/drawer.header.widget.dart';
import 'package:first_app_bdcc/widget/drawer.item.widget.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: <Widget>[
          // l'entete du drawer
          DrawerHeaderWidget(),

          //element du Drawer
          ...(GlobalParameterItemDrawer.menus).map((item) {
            return DrawerItemWidget(
                item['title'], item['leadingIcon'], item['route']);
          }),
        ],
      ),
    );
  }
}
