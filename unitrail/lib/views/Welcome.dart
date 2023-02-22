import 'package:flutter/material.dart';
//import 'package:namer_app/views/Homescreen.dart';
import 'package:namer_app/views/LoginPage.dart';
import 'package:namer_app/views/SignUpPage.dart';
import 'package:namer_app/views/Widgets/MyButton.dart';
import 'package:namer_app/views/Widgets/UniButton.dart';

import 'Components/Tile.dart';

class home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DecoratedBox(
        decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage('assets/images/Tiv.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
          ),

        ),
      child: Column(
        children: [
          Divider(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [tile(imagePath: 'assets/images/Logo1.png'),],
          ),
          Divider(height: 400),
          MyButton(
              title: 'Login',
              color: Colors.white,
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      }
                  )
              );
            },
          ),
          Divider(height: 10),
          MyButton(
              title: 'Guest',
              color: Colors.white,
            onPressed: (){
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) {
              //           return homescreen();
              //         }
              //     )
              // )
            },
          ),
          Divider(height: 10),
          MyButton(
              title: 'Register',
              color: Colors.white,
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) {
                          return SignUpPage();
                        }
                    )
                );
              }
          ),
        ],
      ),
    );
  }
}