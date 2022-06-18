import 'dart:async';

import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaScreen extends StatefulWidget{
  const MapaScreen({Key? key}) : super(key: key);

  @override
  State<MapaScreen> createState() => _MapaScreenState();
}

class _MapaScreenState extends State<MapaScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    CameraPosition puntoInicial =const CameraPosition(
      target: LatLng(-16.408054, -71.538877),
      zoom: 14.4746,
    );

    Set<Marker>markers = Set<Marker>();
    markers.add(const Marker(
        markerId: MarkerId('geo-location'),
        position: LatLng(-16.408054, -71.538877)
      )
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa')
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        markers: markers,
        initialCameraPosition: puntoInicial,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}