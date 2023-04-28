import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:unitrail/views/Widgets/profile_data.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late Future<Map<String, dynamic>?> futureUserData;

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController schoolController = TextEditingController();
  final TextEditingController studentIdController = TextEditingController();

  @override
  void initState() {
    ProfileData();
    super.initState();
  }

  void updateProfile() {}

  void clearFields() {
    firstNameController.clear();
    lastNameController.clear();
    schoolController.clear();
    studentIdController.clear();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    futureUserData = ProfileData().getUserData();
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 67, 98, 238),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        scrollable: true,
                        title: const Text("Edit Profile"),
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: firstNameController,
                                  decoration: const InputDecoration(
                                    labelText: "First Name",
                                  ),
                                ),
                                TextFormField(
                                  controller: lastNameController,
                                  decoration: const InputDecoration(
                                    labelText: "Last Name",
                                  ),
                                ),
                                TextFormField(
                                  controller: schoolController,
                                  decoration: const InputDecoration(
                                    labelText: "School",
                                  ),
                                ),
                                TextFormField(
                                  controller: studentIdController,
                                  decoration: const InputDecoration(
                                    labelText: "Student ID",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              FirebaseFirestore.instance
                                  .collection('Users')
                                  .doc(FirebaseAuth.instance.currentUser?.uid)
                                  .update({
                                "firstName": firstNameController.text,
                                "lastName": lastNameController.text,
                                "school": schoolController.text,
                                "studentID": studentIdController.text,
                              });
                            },
                            child: Text("Save"),
                          ),
                          TextButton(
                            onPressed: clearFields,
                            child: Text("Clear"),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Exit'),
                            child: Text("Exit"),
                          )
                        ],
                      );
                    }
                  );
                },
                child: Icon(Icons.edit),
              )),
        ],
      ),
      body: FutureBuilder<Map<String, dynamic>?>(
          future: futureUserData,
          builder: (BuildContext context,
              AsyncSnapshot<Map<String, dynamic>?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              Map<String, dynamic>? userData = snapshot.data;
              if (userData == null) {
                return Center(child: Text('User data is null'));
              }

              return Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 450,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              alignment: Alignment.centerLeft,
                              height: 20,
                              child: Text(
                                "Name",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.blue[600],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(17.5))),
                              alignment: Alignment.centerLeft,
                              height: 50,
                              child: Text(
                                "${userData['firstName']} ${userData['lastName']}",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(height: size.height * 0.02),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              alignment: Alignment.centerLeft,
                              height: 20,
                              child: Text(
                                "School",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.blue[400],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(17.5))),
                              alignment: Alignment.centerLeft,
                              height: 50,
                              child: Text(
                                "${userData['school']}",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(height: size.height * 0.02),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              alignment: Alignment.centerLeft,
                              height: 20,
                              child: Text(
                                "Student ID",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.blue[300],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(17.5))),
                              alignment: Alignment.centerLeft,
                              height: 50,
                              child: Text(
                                "${userData['studentID']}",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  CustomPaint(
                    painter: HeaderCurvedContainer(),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 35,
                            letterSpacing: 1.5,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 5),
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/blank-profile-picture.png')),
                        ),
                      )
                    ],
                  ),
                  // Padding(padding: EdgeInsets.only(bottom: 270, left: 184),
                  // child: CircleAvatar(
                  //   backgroundColor: Colors.black54,
                  //   ),
                  // )
                ],
              );
            }
          }),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color.fromARGB(255, 67, 98, 238);
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
