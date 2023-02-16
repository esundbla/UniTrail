
import 'package:flutter/material.dart';

class tile extends StatelessWidget{
  final String imagePath;
  const tile({
    super.key,
    required this.imagePath  
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(12),
        color: Color.fromARGB(255, 153, 97, 93)
      ),
      child: Image.asset(imagePath),
      height: 40,
    );
    // TODO: implement build
    //throw UnimplementedError();
  }
}