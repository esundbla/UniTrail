import 'package:flutter/material.dart';
import 'package:namer_app/views/Components/Text_Field.dart';
import 'package:namer_app/views/Homescreen.dart';
import 'package:namer_app/views/LoginPage.dart';
import 'package:namer_app/views/Widgets/MyButton.dart';
import 'package:namer_app/views/Widgets/UniButton.dart';

import 'Components/Tile.dart';

class SignUpPage extends StatelessWidget{
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordController = TextEditingController();

  void saveInformation(){
    print(firstNameController.text);
    print(lastNameController.text);
    print(passwordController.text);
  }
  @override
  Widget build(BuildContext context){
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/Tiv.jpg'),
            fit: BoxFit.cover
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
              controller: firstNameController,
              hintText: 'First Name',
              obscureText: false
          ),
          Divider(height: 10),
          Text_field(
              controller: lastNameController,
              hintText: 'Last Name',
              obscureText: false
          ),
          Divider(height: 10),
          Text_field(
              controller: passwordController,
              hintText: 'Enter Password',
              obscureText: false
          ),
          MyButton(
              title: 'Sign Up',
              color: Colors.white,
              onPressed: null
          )
        ],
      ),
    );
  }
}