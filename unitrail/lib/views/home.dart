import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unitrail/views/Components/GridDashboard.dart';
import 'package:unitrail/models/schedule.dart';
import 'package:unitrail/views/Widgets/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Schedule> schedule = [
    Schedule(
        crn: "1400",
        name: "Comp Organization 1",
        time: "12:00 pm - 1:50 pm",
        day: "TR",
        location: "AES 210",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
    Schedule(
        crn: "2400",
        name: "Comp Organization 2",
        time: "12:00 pm - 1:50 pm",
        day: "MW",
        location: "AES 220",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit,Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
    Schedule(
        crn: "4360",
        name: "Senior Experience",
        time: "4:00 pm - 5:50 pm",
        day: "MW",
        location: "AES 210",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit,Lorem ipsum dolor sit amet, consectetur"),
    Schedule(
        crn: "3600",
        name: "Operating System",
        time: "10:00 am - 11:50 am",
        day: "TR",
        location: "AES 285",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit,Lorem ipsum dolor sit amet, consectetur adipiscing elit,Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfcf7f8),
      appBar: AppBar(
          title: Image.asset(
            "assets/images/team_logo.png",
            fit: BoxFit.contain,
            height: 5.h,
          ),
          toolbarHeight: 7.h,
          backgroundColor: const Color(0xFFa31621),
          actions: [
            TextButton(
              onPressed: () {},
              child: Icon(
                Icons.logout_rounded,
                color: Color(0xFFfcf7f8),
              ),
            )
          ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[GridDashboard(schedule: schedule)],
      ),
    );
  }
}
