import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextfieldEmail extends StatelessWidget {
  final controller; // Lets us access what the user typed into the text field
  final String hintText;
  final bool obscureText;
  final Icon icon;

  const TextfieldEmail(
    {super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0.5.h),
      child: Material(
        child: Center(
          child: SizedBox(
            height: 6.h,
            child: TextFormField(
              controller: controller,
              autocorrect: true,
              obscureText: obscureText,
              decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(color:  Color(0xFF104547)),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Color(0xFFB3CBE4))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Color(0xFFB3CBE4))),
                  prefixIcon: icon),
              validator: (value) => 
                value != null && !EmailValidator.validate(value)
                  ? 'Enter a valid email'
                  : null,
            ),
          ),
        ),
      ),
    );
  }
}
