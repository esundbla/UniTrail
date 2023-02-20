import 'package:flutter/material.dart';

class Text_field extends StatelessWidget{
  final controller; // Lets us access what the user typed into the text field
  final String hintText;
  final bool obscureText;

  const Text_field({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),

      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),

            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade800),
                borderRadius: BorderRadius.circular(12)
            ),
            fillColor:  Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])
        ),
        // decoration: BoxDecoration(
        //     color: Colors.grey[200],
        //     border: Border.all(color: Colors.white),
        //     borderRadius: BorderRadius.circular(12)
        // ),
        // child: Padding(
        //   padding: const EdgeInsets.only(left: 20.0),
        //   child: TextField(
        //
        //     decoration: InputDecoration(
        //         border: InputBorder.none,
        //         hintText: 'Email'
        //     ),
        //   ),
        // ),
      ),
    );
    //throw UnimplementedError();
  }
}