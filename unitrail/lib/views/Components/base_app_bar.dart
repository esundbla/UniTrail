import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class BaseAppBar extends StatelessWidget with PreferredSizeWidget {
  
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
          iconSize: 24, 
        ),
        centerTitle: true,
        title: Row(
          children: <Widget> [
              Image.asset('./assets/images/Logo1.png', fit: BoxFit.contain, height: 5.h),
              //TextButton(onPressed: (){}, child: Text("Hi, Will", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), )),
          ]
         ),
        toolbarHeight: 35.h,
        backgroundColor:  Color(0xFFB3CBE4),
        elevation: .1,
        systemOverlayStyle: SystemUiOverlayStyle.light, 
      ),
    ),
  );
  }
  @override
  Size get preferredSize => Size.fromHeight(60);
}