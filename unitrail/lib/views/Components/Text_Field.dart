
import 'package:flutter/material.dart';

class Textfield extends StatelessWidget{
  final controller; // Lets us access what the user typed into the text field
  final String hintText;
  final bool obscureText;
  final Icon icon;

  const Textfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
      child: Material(
        child: Center(
          child: TextField(
            controller: controller,
            autocorrect: true,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              // filled: true,
              // fillColor: Colors.blue,
              hintStyle: TextStyle(color: Colors.grey[500]),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                //borderRadius: BorderRadius.all(Radius.circular(20.0)),
                
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.blue, width: 2)
              ),
              focusedBorder: OutlineInputBorder(
               // borderRadius: BorderRadius.all(Radius.circular(18.0)),
                borderSide: BorderSide(color: Colors.red)
              ),
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.all(Radius.circular(100)),
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