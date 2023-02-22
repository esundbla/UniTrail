
import 'package:flutter/material.dart';

class Text_field extends StatelessWidget{
  final controller; // Lets us access what the user typed into the text field
  final String hintText;
  final bool obscureText;
  final Icon icon;

  const Text_field({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
      child: Material(
        child: Center(
          child: TextField(

            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey[500]),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                borderSide: BorderSide(color: Colors.red)
              ),
              // focusedBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.all(Radius.circular(50)),
              //   borderSide: BorderSide(color: Colors.red)
              // ),
              prefixIcon: icon
            ),

          ),
        ),
      ),
    );
    //throw UnimplementedError();
  }
}