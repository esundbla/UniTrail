import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  
  @override
  Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Image.asset('./assets/images/Logo1.png', fit: BoxFit.contain,
            height: 5.h,),
        //title: Image.asset('./assets/images/Logo1.png'),
        //title: Image.asset('./assets/images/team_logo.png'),
        actions: [
          IconButton(onPressed: (){}, 
          icon: const Icon(Icons.comment_sharp)),
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.logout))
        ],
        toolbarHeight: 7.h,
        backgroundColor: const Color(0xFFa31621),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        
      ),
    ),
  );
  }
  @override
  Size get preferredSize => Size.fromHeight(60);
}