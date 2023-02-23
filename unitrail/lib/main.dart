import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unitrail/views/HomeScreen.dart';
import 'package:sizer/sizer.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const UniTrail(),
    ),
  );
}

class UniTrail extends StatelessWidget {
  const UniTrail({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'UniTrail',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DefaultBottomBarController(child: const HomeScreen()),
      );
    });
  }
}
