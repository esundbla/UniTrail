import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unitrail/views/Components/tile.dart';
import 'package:unitrail/views/Components/user_input_field.dart';
import 'package:unitrail/views/Widgets/my_button.dart';
import 'package:unitrail/views/Widgets/utils.dart';
import 'package:unitrail/views/home.dart';
//import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:unitrail/views/navigate.dart';
import 'package:unitrail/views/sign_up_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // hold the input email and password from register
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: true,
      body: Container(
        decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  // Sunshine
                  Color(0xFFB92B27),
                  Color(0xFF240B36),
                  Color(0xFF1565C0),
                ]
              ),
              image: DecorationImage(
              image: AssetImage('assets/images/Tiv.jpg'),
              fit: BoxFit.cover,
              opacity: 0.25
              ),
          ),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Tile(imagePath: 'assets/images/Logo1.png'),
              SizedBox(height: 5.h,),
              Text("Sign in to access your account!", 
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold, 
                fontSize: 18,
                color: Colors.white),
              ),
              SizedBox(height: 5.h,),
              Flexible(
                child: SizedBox(
                  height: 6.h,
                  width: 98.w,
                  child: UserInputField(
                    individualController: emailController, 
                    hintText: "Email", 
                    hideText: false, 
                    icon: Icon(Icons.person_3_sharp), 
                    colorForBox: Colors.white, 
                    hintTextColor: Color(0xFF104547)
                  ),
                ),
              ),
              SizedBox(height: 0.70.h,),
              Flexible(
                child: SizedBox(
                  height: 6.h,
                  width: 98.w,
                  child: UserInputField(
                    individualController: passwordController, 
                    hintText: "Password", 
                    hideText: true, 
                    icon: Icon(Icons.password_sharp), 
                    colorForBox: Colors.white, 
                    hintTextColor: Color(0xFF104547)
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              MyButton(
              title: 'LOGIN',
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
              SizedBox(height: 0.7.h),
              MyButton(
                title: "GUEST", 
                color:Colors.white, 
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return NavigateScreen();
                    }));
                },
              ),
              TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                ),
                label: const Text("Don't have an account? Register!"),
                icon: const Icon(Icons.arrow_forward_ios),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SignUpPage();
                    }));
                }, 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
