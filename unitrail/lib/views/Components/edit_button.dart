import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  final String title;
  final Color color;
  final void Function()? onPressed;

  EditButton({required this.title, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Color(0xFFA31621),
              //color: Color.fromARGB(255, 129, 22, 14),
              borderRadius: BorderRadius.circular(12)
          ),
          child: Center(
            child: Material(
              color: Colors.transparent,
              child: RichText(
                text: TextSpan(
                  children: [WidgetSpan(child: 
                    Icon(Icons.edit, size: 25, color: Colors.white,)),
                    TextSpan(
                    text: "  Edit Profile", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  ])       
              )
              ),
            ),
        ),
      ),

    );
  }
}
