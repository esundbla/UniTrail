import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unitrail/models/schedule.dart';
import 'package:unitrail/views/Widgets/back_button.dart';
import 'package:unitrail/views/Widgets/enter_classes.dart';
import 'package:unitrail/views/Widgets/windows_appbar.dart';

class ClassSchedule extends StatefulWidget {
  final List<Schedule> classes;
  ClassSchedule({
    required this.classes,
  });
  @override
  State<ClassSchedule> createState() => _ClassScheduleState();
}
class _ClassScheduleState extends State<ClassSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WindowsAppBar(),
      body: Stack(
        children: <Widget>[
          Positioned(
                left: 75.w, 
                top: 75.h,
                bottom: 0.5.h,
                child: EnterClasses()
          ),
        ]
      ),
    );
  }
}
