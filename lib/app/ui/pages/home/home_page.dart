import 'package:flutter/material.dart';
import 'package:flutter_geo/app/ui/pages/home/painter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui' as ui;
import 'dart:typed_data';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = HomeController();

  final Map<MarkerId, Marker> _makers = Map();
  final _initialCameraPosition =
      const CameraPosition(target: LatLng(13.7006742, -89.2038779), zoom: 50);
  _onTap(LatLng position) async {
    final markerId = MarkerId(_makers.length.toString());

    final maker = Marker(
        markerId: markerId,
        position: position,
        anchor: Offset(0.5, 0.5),
        infoWindow: InfoWindow(
          title: 'Domicilios sv',
          snippet: 'Sucursal centro el congo',
        ));
    setState(() {
      _makers[markerId] = maker;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GoogleMap(
        onMapCreated: _controller.onMapCreated,
        initialCameraPosition: _initialCameraPosition,
        markers: Set.of(_makers.values),
        onTap: _onTap,
      ),
    );
  }
}
