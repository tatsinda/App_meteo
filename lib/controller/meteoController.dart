import 'package:http/http.dart' as http;
import 'dart:convert';

class MeteoDetailsController {
  // ignore: prefer_typing_uninitialized_variables
  static var weatherData;

  static getDataMeteo(var url) {
    http.get(url).then((value) {
      weatherData = json.decode(value.body);
    }).catchError((onError) {});
  }
}
