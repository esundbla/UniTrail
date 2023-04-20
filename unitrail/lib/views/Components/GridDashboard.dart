import 'package:flutter/material.dart';
import 'package:unitrail/views/Components/event_editing.dart';
import 'package:unitrail/views/Widgets/calendar_widget.dart';
import 'package:unitrail/views/Widgets/schedule.dart';
import 'package:unitrail/views/Widgets/costumed_home_button.dart';
import 'package:unitrail/views/navigate.dart';
import 'package:unitrail/views/settings.dart';

import 'package:unitrail/models/schedule.dart';

// ignore: must_be_immutable
class GridDashboard extends StatelessWidget {
  final List<Schedule> schedule;
  GridDashboard({
    required this.schedule,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: GridView.count(
      childAspectRatio: 1.5,
      padding: EdgeInsets.all(20),
      crossAxisCount: 1,
      crossAxisSpacing: 18,
      mainAxisSpacing: 18,
      children: <Widget>[
        CustomButton(
            buttonTitle: 'Navigate',
            buttonColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NavigateScreen();
              }));
            },
            picPath: 'assets/images/map.jpg'),
        CustomButton(
            buttonTitle: 'Classes',
            buttonColor: Colors.deepPurple,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ClassSchedule();
              }));
            },
            picPath: 'assets/images/c.jpg'),
        CustomButton(
            buttonTitle: 'Calendar',
            buttonColor: Colors.red,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Scaffold(
                            appBar: AppBar(
                              title: Text('Calendar Events'),
                              centerTitle: true,
                            ),
                            body: CalendarWidget(),
                            floatingActionButton: FloatingActionButton(
                              backgroundColor: Colors.red,
                              onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => EventEditingPage()),
                              ),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          )));
            },
            picPath: 'assets/images/calendar.jpg'),
        // CustomButton(
        //     buttonTitle: 'Classes',
        //     buttonColor: Colors.deepPurple,
        //     onPressed: null,
        //     picPath: 'assets/images/c.jpg'),
        // CustomButton(
        //     buttonTitle: 'Classes',
        //     buttonColor: Colors.deepPurple,
        //     onPressed: null,
        //     picPath: 'assets/images/c.jpg')
      ],
    ));
  }
}

class Items {
  String title;
  // ignore: prefer_typing_uninitialized_variables
  final routeName;
  Items({required this.title, required this.routeName});
}
