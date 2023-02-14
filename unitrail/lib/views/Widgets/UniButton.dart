import 'package:flutter/material.dart';

class UniBotton extends StatelessWidget{
  final String title;
  final Color color;
  final void Function()? onPressed;

  UniBotton({required this.title, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0, 
          vertical: 5.0
        ),
        backgroundColor: color,
        shape: StadiumBorder()
      ),
      child: SizedBox(
        height: 30,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold,
              fontSize: 25
              ),
          ),
        ),
      ),
      
    );
  }
}