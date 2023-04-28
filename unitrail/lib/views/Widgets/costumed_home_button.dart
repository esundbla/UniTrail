import 'dart:ui';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String title;
  final String picPath;
  final Color buttonColor;
  final void Function()? onPressed;
  final EdgeInsetsGeometry position;

  HomeButton({
    required this.title, 
    required this.buttonColor, 
    required this.onPressed, 
    required this.picPath,
    required this.position,
    });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: <Widget>[
           Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Color(0x0FFFCF7F8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade600,
                  spreadRadius: 1,
                  blurRadius: 15,
                  offset: const Offset(5, 5)
                ),
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5,-5),
                  blurRadius: 15,
                  spreadRadius: 1
                ) ,
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28, left: 21),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset(picPath,
              fit: BoxFit.fill,
              height: 21.h,
              width: 31.w,
              ),
            ),
          ),
         //Image.asset(picPath,),
           Padding(
             //padding: const EdgeInsets.only(top: 200.0, left: 40),
             padding: position,
             child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFFA31621),
              ),
             ),
           ),
        ]
      
      ),
    );
  }
}