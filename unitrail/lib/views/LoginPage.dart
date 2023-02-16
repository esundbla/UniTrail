import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:namer_app/views/Homescreen.dart';
import 'package:namer_app/views/Widgets/SignInButton.dart';
import 'package:namer_app/views/Components/Text_Field.dart';
import 'package:namer_app/views/Components/Tile.dart';

// class LoginPage extends StatelessWidget {
//   LoginPage({super.key});

//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();
// // Sign user in method

// void SignUserIn(){}

//   @override
//   State<LoginPage> createState() => _LoginPageState();

// }
// class _LoginPageState extends State<LoginPage> {
class LoginPage extends StatelessWidget{
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
// Sign user in method

   void SignUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 181, 92, 86),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [tile(imagePath: 'assets/images/logo.png'),],
                ),
                SizedBox(height: 20),

                  // AssetImage("assets/images/google.png"),
                  // color: Colors.white,
                  // size: 300,

                Text(
                  '3D MAP',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                SizedBox(height: 50),
                Text_field(
                  controller: usernameController,
                  hintText: 'Email',
                  obscureText: false,
                ),
                SizedBox(height: 10),
                Text_field(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true
                ),
                SizedBox(height: 10),
                SignInButton(
                  title: 'Sign In', 
                  color: Colors.white, 
                  onPressed:() { 
                    Navigator.push(
                    context,
                      MaterialPageRoute(
                        builder: (context) {
                        return const HomeScreen();
                    }
                  )
                );}),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.white,)
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 20),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       ' Register now',
                //       style: TextStyle(
                //         color: Colors.blue,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ],
                // ),
                // SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.05,
                          color: Color.fromARGB(255, 110, 19, 13),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('or continue with', style: TextStyle(color: Colors.white),),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.05,
                          color: Color.fromARGB(255, 110, 19, 13),
                        ),
                      ),
                     
                    ],
                  ),
                ),
                 SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          tile(imagePath: 'assets/images/google.png'),
                          SizedBox(width: 10),
                          tile(imagePath: 'assets/images/facebook.png')
                        
                        ],
                      )

              ],

            ),
          ),
        )
    );
  }
}

