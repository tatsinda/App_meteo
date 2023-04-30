import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalParameterItemDrawer {
  static final menus = [
    {"title": "Home", "route": "/", "leadingIcon": Icon(Icons.home)},
    {
      "title": "Meteo",
      "route": "/meteo",
      "leadingIcon": Icon(Icons.water),
    },
    {
      "title": "Gallery",
      "route": "/gallery",
      "leadingIcon": Icon(Icons.browse_gallery)
    },
    {
      "title": "Quiz",
      "route": "/quiz",
      "leadingIcon": Icon(Icons.quiz),
    },
    {
      "title": "Counter",
      "route": "/counter",
      "leadingIcon": Icon(Icons.countertops),
    }
  ];
}
