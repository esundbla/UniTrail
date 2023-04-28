
import 'package:flutter/material.dart';

class Tile extends StatelessWidget{
  final String imagePath;
  const Tile({
    super.key,
    required this.imagePath  
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      height: 65,
      child: Image.asset(imagePath),
    );
  }
}