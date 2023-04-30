import 'package:first_app_bdcc/controller/meteoController.dart';
import 'package:first_app_bdcc/globalParameter/globalRouteApi';
import 'package:flutter/material.dart';
import '';

class MeteoDetails extends StatefulWidget {
  String city = '';
  MeteoDetails(String city) {
    this.city = city;
  }
  @override
  State<MeteoDetails> createState() => _MeteoDetailsState();
}

class _MeteoDetailsState extends State<MeteoDetails> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    MeteoDetailsController.getDataMeteo(
        GobalbalRouteApi.MeteoUri['getDetails']);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Meteo de la ville ${widget.city}'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Text('Meto...'),
      ),
    );
  }
}
