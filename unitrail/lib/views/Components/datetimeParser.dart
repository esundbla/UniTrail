import 'dart:math';

DateTime parseDT(String raw) {
  var year = int.parse(raw.substring(0, 4));
  var month = int.parse(raw.substring(4, 6));
  var day = int.parse(raw.substring(6, 8));
  if (raw.length > 9) {
    var hour = int.parse(raw.substring(9, 11));
    var minute = int.parse(raw.substring(11, 13));
    var second = int.parse(raw.substring(13, 15));
    return DateTime(year, month, day, hour, minute, second);
  } else {
    return DateTime(year, month, day);
  }
}
