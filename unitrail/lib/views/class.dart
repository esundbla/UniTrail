
class Class {
  final String crn;
  final String name;
  final String day;
  final String description;
  final String location;
  final String times;

  const Class(
      {required this.crn,
      required this.name,
      required this.day,
      required this.description,
      required this.location,
      required this.times});

  static Class fromJson(Map<String, dynamic> json) => Class(
    crn: json['crn'],
    name: json['name'],
    day: json['day'],
    description: json['description'],
    location: json['location'],
    times: json['times']
  );
}
