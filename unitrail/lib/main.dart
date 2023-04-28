import 'package:provider/provider.dart';
import 'package:unitrail/BE/read%20data/cam_scan.dart';
import 'package:unitrail/views/Components/ics_tool.dart';
import 'package:unitrail/views/Provider/event_provider.dart';
import 'package:unitrail/views/Widgets/utils.dart';
import 'package:unitrail/views/login_page.dart';
import 'package:flutter/material.dart';
import 'package:unitrail/views/Components/event.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:device_preview/device_preview.dart';
import 'dart:async';
import 'package:camera/camera.dart';

List<Event>? events;
CameraDescription? firstCamera;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  events = await icsToEvent();
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  firstCamera = cameras.first;

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(DevicePreview(enabled: false, builder: (context) => MyApp()));
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return ChangeNotifierProvider(
        create: (context) => EventProvider(events: events!),
        child: MaterialApp(
            scaffoldMessengerKey: Utils().messengerKey,
            navigatorKey: navigatorKey,
            title: 'UniTrail',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: DefaultBottomBarController(
                child: Login()))
                //child: camScan(camera: firstCamera!))),
      );
    });
  }
}
