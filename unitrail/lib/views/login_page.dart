import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:unitrail/main.dart';
import 'package:unitrail/views/Components/text_field.dart';
import 'package:unitrail/views/Widgets/my_button.dart';
import 'package:unitrail/views/Widgets/utils.dart';
import 'package:unitrail/views/home.dart';
import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'Components/tile.dart';
import 'Widgets/back_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // hold the input email and password from register
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              onPressed: () async {
                try {
                await FirebaseAuth.instance
                  .signInWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text)
                  .then((value) {
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                    HomeScreen()), (Route<dynamic> route) => false);
                  });
                } on FirebaseAuthException catch (e) {
                  print(e);
                  AwesomeDialog(
                    context: context,
                    headerAnimationLoop: false,
                    dialogType: DialogType.error,
                    animType: AnimType.bottomSlide,
                    showCloseIcon: false,
                    title: "Try again",
                    desc: "The email address has not been registered or the password is invalid.",
                  ).show();
                  Utils().showSnackBar(e.message);
                }
              }),
          ],
        ),
      ),
    );
  }
}
