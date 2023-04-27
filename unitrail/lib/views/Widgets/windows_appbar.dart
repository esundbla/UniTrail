import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:unitrail/views/show_user_info.dart';

class WindowsAppBar extends StatefulWidget with PreferredSizeWidget {
  
  @override
  State<WindowsAppBar> createState() => _WindowsAppBarState();
  @override
Size get preferredSize => Size.fromHeight(8.h);
}

class _WindowsAppBarState extends State<WindowsAppBar> {
  User? currentUser = FirebaseAuth.instance.currentUser;
  String? firstname = ':';
  String? lastname = ')';

  @override
  void initState(){
    super.initState();
    _loadUserData();

  }
  void _loadUserData() async {
    
    var user = await FirebaseFirestore.instance.collection("Users").doc(currentUser!.uid).get();
    //Map<String, dynamic> userData = vari as Map<String, dynamic>;
    setState(() {
      firstname = user.data()!['firstName'];
      lastname = user.data()!['lastName'];
      
    });
  }
  @override
  Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          //padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          tooltip: 'Go back',
          color: Color(0xFFA31621), 
          onPressed: (){ Navigator.of(context).pop();},
          icon: Icon(Icons.arrow_back_ios_sharp),
          iconSize: 25, 
        ),
        title: Row(
          children: <Widget> [
              Image.asset('./assets/images/Logo1.png', fit: BoxFit.contain, height: 5.h),
              //TextButton(onPressed: (){}, child: Text("Hi, Will", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), )),
              SizedBox(width: 16.w,),
              ShowUserInfo(),
              //  ElevatedButton(onPressed: (){}, 
                
              //   style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize: Size(35, 35)),
              //   child: Text(firstname![0] + lastname![0], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), ),
                
                  
              // )
          ]
         ),
        //title: Image.asset('./assets/images/Logo1.png'),
        //title: Image.asset('./assets/images/team_logo.png'),
        actions: [],
        toolbarHeight: 7.h,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        
      ),
    ),
  );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}