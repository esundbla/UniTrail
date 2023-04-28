import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unitrail/views/Widgets/my_button.dart';

class ShowUserInfo extends StatefulWidget with PreferredSizeWidget {
  
  @override
  State<ShowUserInfo> createState() => _ShowUserInfoState();
  @override
  Size get preferredSize => Size.fromHeight(8.h);
}
class _ShowUserInfoState extends State<ShowUserInfo> {
  User? currentUser = FirebaseAuth.instance.currentUser;
  String firstName = ':';
  String lastName = ')';
  String email = ' ';
  String studentID = ' ';

  @override
  void initState(){
    super.initState();
    _loadUserData();

  }
  void _loadUserData() async {
    var user = await FirebaseFirestore.instance.collection("Users").doc(currentUser!.uid).get();
    //Map<String, dynamic> userData = vari as Map<String, dynamic>;
    setState(() {
      //myId = user.data()!['uid'];
      firstName = user.data()!['firstName'];
      lastName = user.data()!["lastName"];
      email = user.data()!["email"];
      studentID = user.data()!['studentID'];
    });
  }
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize: Size(40, 40), backgroundColor: Color(0xFFA31621)),
      child:  Text(firstName[0] + lastName[0], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      onPressed: (){
        showDialog(
          context: context, 
          builder: (BuildContext context){
            return AlertDialog(
              scrollable: true,
              title: Center(child: Text("$firstName  $lastName", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
              content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  child: Column(
                    children: [
                      Text(email),
                      Text(studentID)
                    ],
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: (){},
                  child: Text("Edit",style:TextStyle( color:  Color(0xFFA31621))),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Logout'),
                  child: Text("Logout", style:TextStyle( color:  Color(0xFFA31621))),
                )
              ],
            );
          }
        );
      },
    );
  }
}