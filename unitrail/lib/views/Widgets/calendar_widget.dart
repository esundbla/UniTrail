import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unitrail/views/Components/event.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:unitrail/views/Components/event_data_source.dart';
import 'package:unitrail/views/Provider/event_provider.dart';
import 'package:unitrail/views/Widgets/tasks_widget.dart';

class CalendarWidget extends StatelessWidget {
  final List<Event> msuEvents;
  const CalendarWidget({required this.msuEvents});

  @override
  Widget build(BuildContext context) {
    var events = Provider.of<EventProvider>(context).events;
    final allEvents =  msuEvents + events;
    return SfCalendar(
      
      view: CalendarView.month,
      dataSource: EventDataSource(events),
      initialSelectedDate: DateTime.now(),
      cellBorderColor: Colors.transparent,
      onSelectionChanged: (details) {
        final provider = Provider.of<EventProvider>(context, listen: false);
        provider.setDate(details.date!);
      },
      onTap: (details) {
        final provider = Provider.of<EventProvider>(context, listen: false);

        if (provider.selectedDate == details.date) {
          showModalBottomSheet(
            context: context,
            builder: (context) => TasksWidget(),
          );
        }
      },
      onLongPress: (details) {
        final provider = Provider.of<EventProvider>(context, listen: false);

        provider.setDate(details.date!);
        showModalBottomSheet(
          context: context,
          builder: (context) => TasksWidget(),
        );
      },
    );
  }
}
