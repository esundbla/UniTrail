import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:unitrail/views/Components/Building_LatLng.dart';

final X011 = "AIzaSyDZAM1_YKEux_XQ6rcP7XPgcb-o_YBlVjs";

class GMapTest extends StatefulWidget {
  const GMapTest({super.key});

  @override
  _GMapTest createState() => _GMapTest();
}

class _GMapTest extends State<GMapTest> {
  late GoogleMapController mapController;

  LatLng _center = const LatLng(39.7439, -105.0047);
  LatLng origin = buildingLL["AES"]!;
  LatLng dest = buildingLL["Science"]!;
  final LatLng boxNE = const LatLng(39.746692, -105.000814);
  final LatLng boxSW = const LatLng(39.741209, -105.010962);

  List<LatLng> polyLineCords = [];

  void getPolyPoits(ori, des) async {
    PolylinePoints plp = PolylinePoints();

    PolylineResult result = await plp.getRouteBetweenCoordinates(
        X011,
        PointLatLng(ori.latitude, ori.longitude),
        PointLatLng(des.latitude, des.longitude),
        travelMode: TravelMode.walking);

    if (result.points.isNotEmpty) {
      result.points.forEach((point) {
        polyLineCords.add(LatLng(point.latitude, point.longitude));
      });
      setState(() {});
    }
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    getPolyPoits(origin,dest);
    super.initState();
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
              polylines: {
                Polyline(
                  polylineId: PolylineId("Route"),
                  points: polyLineCords,
                  color: Colors.blue,
                  width: 5,
                )
              },
              cameraTargetBounds: CameraTargetBounds(
                  LatLngBounds(northeast: boxNE, southwest: boxSW)),
              markers: {
                Marker(
                  markerId: MarkerId("Current"),
                  position: origin,
                ),
                Marker(
                  markerId: MarkerId("Destination"),
                  position: dest,
                )
              },
            )));
  }
}
