import 'package:flutter/material.dart';
import 'package:unitrail/views/Components/text_field.dart';
import 'package:unitrail/views/Widgets/my_button.dart';
import 'package:unitrail/views/home.dart';
import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'Components/tile.dart';
import 'Widgets/back_button.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void saveInformation() {
    print(emailController.text);
    print(passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Tiv.jpg'),
              fit: BoxFit.cover,
              //colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
              opacity: 0.15
              //colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
              ),
        ),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 8),
                MyBackButton(),
                SizedBox(width: 50),
                Tile(imagePath: 'assets/images/Logo1.png'),
              ],
            ),
            SizedBox(
              height: 200,
            ),
            Textfield(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
                icon: Icon(Icons.email)),
            Textfield(
              controller: passwordController,
              hintText: 'Enter Password',
              obscureText: true,
              icon: Icon(Icons.password),
            ),
            SizedBox(
              height: 10,
            ),
            MyButton(
              title: 'Login',
              color: Colors.white,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                      home: DefaultBottomBarController(child: HomeScreen()));
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
