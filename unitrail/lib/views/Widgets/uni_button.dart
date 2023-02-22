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
     child: Container(padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 129, 22, 14),
              borderRadius: BorderRadius.circular(12)
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
                fontSize: 20,

              ),
            ),
          ),
        ),
      ),
    );
  }
}
