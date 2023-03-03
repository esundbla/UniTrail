import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMapTest extends StatefulWidget {
  const GMapTest({super.key});

  @override
  _GMapTest createState() => _GMapTest();
}

class _GMapTest extends State<GMapTest> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(39.7439, -105.0047);
  final LatLng aes = const LatLng(39.74506, -105.0088116);
  final LatLng tivoli = const LatLng(39.745019, -105.006413);


  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.green[700],
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Maps Sample App'),
              elevation: 2,
            ),
            body: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 15.0,
                ),
                markers: {
                  Marker(
                    markerId: MarkerId("Current"),
                    position: aes,
                  ),
                  Marker(
                    markerId: MarkerId("Destination"),
                    position: tivoli,
                  )

                },)));
  }
}
