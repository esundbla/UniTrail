import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:unitrail/views/Components/GridDashboard.dart';
import 'package:unitrail/models/schedule.dart';
import 'package:unitrail/views/Widgets/custom_appbar.dart';
import 'package:unitrail/views/show_user_info.dart';

import 'login_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  User? currentUser = FirebaseAuth.instance.currentUser;
  String? myId = '';
  String firstname = ' ';
  String lastname = ' ';

  @override
  void initState(){
    super.initState();
    _loadUserData();
  }
  
  void _loadUserData() async {
    var user = await FirebaseFirestore.instance.collection("Users").doc(currentUser!.uid).get();
    setState(() {
      myId = user.data()!['uid'];
      firstname = user.data()!['firstName'];
      lastname = user.data()!['lastName'];
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Color(0xFFfcf7f8),
        appBar: AppBar(
        title: Row(
          children: <Widget> [
              Image.asset('./assets/images/Logo1.png', fit: BoxFit.contain, height: 5.h),
              TextButton(onPressed: (){}, child: Text("Hi, $firstname", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), )),
              SizedBox(width: 5.w,),
              ShowUserInfo()
          ]
         ),
        actions: [],
        toolbarHeight: 7.h,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[GridDashboard()],
        ),
      ),
    );
  }
}
