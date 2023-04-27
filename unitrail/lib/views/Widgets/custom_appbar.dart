import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unitrail/views/show_user_info.dart';

class HomeAppBar extends StatefulWidget with PreferredSizeWidget {
  
  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
  @override
  Size get preferredSize => Size.fromHeight(8.h);
}

class _HomeAppBarState extends State<HomeAppBar> {
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
  Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
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
    ),
  );


  }
}