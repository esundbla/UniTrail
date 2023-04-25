import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unitrail/views/Components/GridDashboard.dart';
import 'package:unitrail/models/schedule.dart';
import 'package:unitrail/views/Widgets/custom_appbar.dart';

import 'login_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Color(0xFFfcf7f8),
        appBar: AppBar(
            title: Image.asset(
              "assets/images/team_logo.png",
              fit: BoxFit.contain,
              height: 5.h,
            ),
            toolbarHeight: 7.h,
            backgroundColor: const Color(0xFFa31621),
            actions: [
              TextButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const LoginPage();
                        },
                      ),
                    );
                  });
                },
                child: Icon(
                  Icons.logout_rounded,
                  color: Color(0xFFfcf7f8),
                ),
              )
            ]),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[GridDashboard()],
        ),
      ),
    );
  }
}
