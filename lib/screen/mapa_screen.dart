import 'dart:async';

import 'package:flutter/material.dart';

// import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaScreen extends StatefulWidget{
  const MapaScreen({Key? key}) : super(key: key);

  @override
  State<MapaScreen> createState() => _MapaScreenState();
}

class _MapaScreenState extends State<MapaScreen> {
  // Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa')
      ),
      body: Center(
        child: Text('sdfsdf'),
      ),
    );
  }
}