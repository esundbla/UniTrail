import 'package:flutter/material.dart';
import 'package:namer_app/views/Components/Text_Field.dart';
import 'package:namer_app/views/Homescreen.dart';
import 'package:namer_app/views/LoginPage.dart';
import 'package:namer_app/views/Widgets/MyButton.dart';
import 'package:namer_app/views/Widgets/UniButton.dart';

import 'Components/Tile.dart';

class LoginPage extends StatelessWidget{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void saveInformation(){
    print(emailController.text);
    print(passwordController.text);
  }
  @override
  Widget build(BuildContext context){
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Tiv.jpg'),
          fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
          //colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
        ),

      ),
      child: Column(
        children: [
          Divider(height: 60),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [tile(imagePath: 'assets/images/Logo1.png'),],
          ),
          Divider(height: 200),

          Text_field(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
              icon: Icon(Icons.email)          ),
          //Divider(height: 2),
          Text_field(
            controller: passwordController,
            hintText: 'Enter Password',
            obscureText: false,
            icon: Icon(Icons.password),
          ),
          MyButton(
              title: 'Login',
              color: Colors.white,
              onPressed: null
          )
        ],
      ),
    );
  }
}