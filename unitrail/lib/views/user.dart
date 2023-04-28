import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String firstName;
  final String lastName;
  final String email;
  final String school;
  final String studentId;

  const UserModel({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.school,
    required this.studentId,
  });

  // static User fromJson(Map<String, dynamic> json) => User(
  //       firstName: json['firstName'],
  //       lastName: json['lastName'],
  //       email: json['email'],
  //       school: json['school'],
  //       id: json['studentID'],
  //     );

  toJson() {
    return {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "school": school,
      "studentID": studentId,
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
        id: document.id,
        firstName: data["firstName"],
        lastName: data["lastName"],
        email: data["email"],
        school: data["school"],
        studentId: data["schoolID"]);
  }
}
