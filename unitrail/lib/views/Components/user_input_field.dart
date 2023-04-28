import 'package:flutter/material.dart';

class UserInputField extends StatelessWidget{
  // ignore: prefer_typing_uninitialized_variables
  final individualController;
  final String hintText;
  final bool hideText;
  final Icon icon;
  final Color colorForBox;
  final Color hintTextColor;
  const UserInputField({super.key, required this.individualController, required this.hintText, required this.hideText, required this.icon, required this.colorForBox, required this.hintTextColor});
  
  @override
  Widget build(BuildContext context){
    return TextFormField(
      controller: individualController,
      autocorrect: true,
      obscureText: hideText,
      
      decoration: InputDecoration(
        filled: true,
        fillColor: colorForBox,
        hintText: hintText,
        hintStyle: TextStyle(color: hintTextColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: Color(0xFF6B6B83))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(6)
        ),
        prefixIcon: icon

      ),
      

    );
  }
}