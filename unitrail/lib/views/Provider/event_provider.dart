import 'package:flutter/cupertino.dart';
import 'package:unitrail/views/Components/event.dart';
import 'package:unitrail/views/Widgets/utils_calendar.dart';
import 'package:unitrail/views/Components/ics_tool.dart';

class EventProvider extends ChangeNotifier {
  List<Event> events;
  
  EventProvider({required this.events});
  DateTime _selectedDate = DateTime.now();

  DateTime get selectedDate => _selectedDate;

  void setDate(DateTime date) => _selectedDate = date;

  List<Event> get eventsOfSelectedDate => events.where(
        (event) {
          final selected = UtilsCalendar.removeTime(_selectedDate);
          final from = UtilsCalendar.removeTime(event.from);
          final to = UtilsCalendar.removeTime(event.to);

          return from.isAtSameMomentAs(selectedDate) ||
              to.isAtSameMomentAs(selectedDate) ||
              (selected.isAfter(from) && selected.isBefore(to));
        },
      ).toList();

  List<Event> get _events => events;

  void addEvent(Event event) {
    events.add(event);

    notifyListeners();
  }

  void deleteEvent(Event event) {
    events.remove(event);

    notifyListeners();
  }

  void editEvent(Event newEvent, Event oldEvent) {
    final index = events.indexOf(oldEvent);
    events[index] = newEvent;

    notifyListeners();
  }
}
