import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:unitrail/views/Components/edit_button.dart';
import 'package:unitrail/views/Widgets/my_button.dart';
import 'package:unitrail/views/Widgets/profile_data.dart';
import 'package:unitrail/views/home.dart';

// DocumentReference userRef = FirebaseFirestore.instance
//     .collection('users')
//     .doc(FirebaseAuth.instance.currentUser?.uid);

class ProfilePageEdit extends StatefulWidget {
  @override
  _ProfilePageEditState createState() => _ProfilePageEditState();
}

class _ProfilePageEditState extends State<ProfilePageEdit> {
  late Future<Map<String, dynamic>?> futureUserData;
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController schoolController = TextEditingController();
  final TextEditingController studentIdController = TextEditingController();

  @override
  void initState() {
    ProfileData();
    super.initState();
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomeScreen();
                },
              ),
            );
          },
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.check),
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
              String fullName =
                  userData['firstName'] + ' ' + userData['lastName'];
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
                        child: Form(
                          key: _formKey,
                          child: ListView(
                            // physics: NeverScrollableScrollPhysics(),
                            children: <Widget>[
                              textfield(hintText: fullName),
                              textfield(hintText: userData['email']),
                              textfield(hintText: userData['school']),
                              textfield(hintText: userData['studentID']),

                            ],
                          ),
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

  Widget textfield({required String hintText}) {
    return Material(
      elevation: 4,
      shadowColor: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            letterSpacing: 2,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
    
          ),
          fillColor: Colors.blue,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none
            )
        ),
      ),
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
