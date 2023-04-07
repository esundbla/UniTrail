import 'package:requests/requests.dart';
import 'package:unitrail/views/Components/event.dart';
import 'package:icalendar_parser/icalendar_parser.dart';
import 'package:format/format.dart';
import 'package:intl/intl.dart';

Future<List<Event>> icsToEvent() async {
  List<Event> events = [];

  //Make HTTP get call to MSU Calandar tool
  var r = await Requests.get(
      'https://www.trumba.com/calendars/msudenver-events-calendars.ics');

  //On fail raise error
  r.raiseForStatus();

  //Events as long string
  String body = r.content();
  //Split string by new event indicator
  var eventListString = body.split('BEGIN:VEVENT');
  //Drop the top event (description event)
  eventListString = eventListString.sublist(1);

  for (var eventString in eventListString) {
    var eventDts = eventString.split('\n');
    String? summary, location;
    bool? allDay;
    String? startString, endString;
    try {
      for (var dts in eventDts) {
        //print(dts);

        switch (dts.split(":")[0]) {
          case "SUMMARY":
            {
              summary = dts.split(":")[1];
            }
            break;

          case "LOCATION":
            {
              location = dts.split(":")[1];
            }
            break;

          case "DTSTART;TZID=America/Denver":
            {
              startString = dts.split(":")[1];
            }
            break;

          case "DTEND;TZID=America/Denver":
            {
              endString = dts.split(":")[1];
            }
            break;

          case "DTSTART;VALUE=DATE":
            {
              startString = dts.split(":")[1];
            }
            break;

          case "DTEND;VALUE=DATE":
            {
              endString = dts.split(":")[1];
            }
            break;

          case "X-MICROSOFT-CDO-ALLDAYEVENT":
            {
              allDay = dts.split(":")[1].contains("TRUE") ? true : false;
            }
            break;

          default:
            {}
            break;
        }
      }
      DateTime start;
      DateTime end;
      if (startString!.isNotEmpty && startString.length > 9) {
        startString = startString.substring(0, 4) +
            "-" +
            startString.substring(4, 6) +
            "-" +
            startString.substring(6, 8) +
            " " +
            startString.substring(9, 11) +
            ":" +
            startString.substring(11, 13) +
            ":" +
            startString.substring(13);

        endString = endString!.substring(0, 4) +
            "-" +
            endString.substring(4, 6) +
            "-" +
            endString.substring(6, 8) +
            " " +
            endString.substring(9, 11) +
            ":" +
            endString.substring(11, 13) +
            ":" +
            endString.substring(13);

        start = DateFormat("yyyy-mm-dd hh:mm:ss").parse(startString);
        end = DateFormat("yyyy-mm-dd hh:mm:ss").parse(endString);
      } else {
        startString = startString.substring(0, 4) +
            "-" +
            startString.substring(4, 6) +
            "-" +
            startString.substring(6);

        endString = endString!.substring(0, 4) +
            "-" +
            endString.substring(4, 6) +
            "-" +
            endString.substring(6);
        start = DateFormat("yyy-mm-dd").parse(startString);
        end = DateFormat("yyyy-mm-dd").parse(endString);
      }

      var newEvent = Event(
          title: 'MSU Event',
          description: summary!,
          from: start,
          to: end,
          isAllDay: allDay!);

      events.add(newEvent);
    } catch (e) {
      //print(format('Event: FAILED!!!!!!!!!\n{}', eventString));
      print(e);
    }
  }

  return events;
}
