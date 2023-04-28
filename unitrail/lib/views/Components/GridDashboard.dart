import 'package:flutter/material.dart';
import 'package:unitrail/views/Components/event_editing.dart';
import 'package:unitrail/views/Widgets/calendar_widget.dart';
import 'package:unitrail/views/Widgets/schedule.dart';
import 'package:unitrail/views/Widgets/costumed_home_button.dart';

import 'package:unitrail/views/profile_page.dart';
import 'package:unitrail/views/schedule.dart';
import 'package:unitrail/views/navigate.dart';
import 'package:unitrail/views/Components/ics_tool.dart';
import 'package:unitrail/views/settings.dart';
import "package:url_launcher/url_launcher.dart";
import 'package:unitrail/models/schedule.dart';
import 'package:unitrail/views/Widgets/windows_appbar.dart';

// ignore: must_be_immutable
class GridDashboard extends StatelessWidget {
  final List<Schedule> schedule;
  GridDashboard({
    required this.schedule,
  });
   void openLink() async {
    
    var url = Uri.parse('https://www.msudenver.edu');
    if(await canLaunchUrl(url)){
      await launchUrl(url, 
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: GridView.count(
        childAspectRatio: 0.65,
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 40),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: <Widget>[
        HomeButton(
            title: 'Navigate',
            position: const EdgeInsets.only(top: 200.0, left: 45),
            buttonColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NavigateScreen();
              }));
            },
            picPath: 'assets/images/ar-maps.jpg'),
        HomeButton(
            title: 'Classes',
            position: const EdgeInsets.only(top: 200.0, left: 48),
            buttonColor: Colors.deepPurple,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ClassSchedule();
              }));
            },
            picPath: 'assets/images/school.jpg'),
        HomeButton(
            title: 'Calendar',
            position: const EdgeInsets.only(top: 200.0, left: 45),
            buttonColor: Colors.red,
            onPressed: () async {
              var msuList = await icsToEvent();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Scaffold(
                            appBar: WindowsAppBar(),
                            body: CalendarWidget(msuEvents: msuList),
                            floatingActionButton: FloatingActionButton(
                              backgroundColor: Color(0xFFA31621),
                              onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => EventEditingPage()),
                              ),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          )));
            },
            picPath: 'assets/images/calendar.png'),
            HomeButton(
              position: const EdgeInsets.only(top: 200.0, left: 60),
              title: 'MSU',
              buttonColor: Color(0xFFA31621),
              onPressed: openLink,
              picPath: 'assets/images/aesBuilding.jpg'
            ),
      ],
    ));
  }
}
