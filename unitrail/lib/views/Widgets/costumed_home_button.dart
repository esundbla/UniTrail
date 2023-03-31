import 'dart:ui';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonTitle;
  final String picPath;
  final Color buttonColor;
  final void Function()? onPressed;

  CustomButton({required this.buttonTitle, required this.buttonColor, required this.onPressed, required this.picPath});

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(picPath),
            fit: BoxFit.fill,
            
            ),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget> [
          ElevatedButton(
            onPressed: onPressed, 
            
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(buttonColor),),
            
            child: Text(buttonTitle),
            ),

        ],
      ),
    );
  }
}