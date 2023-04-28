import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextfieldPassword extends StatelessWidget {
  final controller; // Lets us access what the user typed into the text field
  final String hintText;
  final bool obscureText;
  final Icon icon;

  const TextfieldPassword(
    {super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget> [
        Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0.5.h),
        child: SizedBox(
          height: 6.h,
          child: TextFormField(
            controller: controller,
            autocorrect: true,
            obscureText: obscureText,
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFFFFFFF),
                hintText: hintText,
                hintStyle: TextStyle(color: Color(0xFF104547)),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Color(0xFFB3CBE4))),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFB3CBE4)),
                  borderRadius: BorderRadius.circular(6)
                ),
                prefixIcon: icon),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) => 
              value != null && value.length < 6
                ? 'Enter min. 6 characters'
                : null,
          ),
        ),
      ),
      ]
    );
  }
}
