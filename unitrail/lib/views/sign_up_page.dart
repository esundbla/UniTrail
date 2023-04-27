import 'package:flutter/material.dart';
import 'package:unitrail/views/Components/user_input_field.dart';
import 'package:unitrail/views/Widgets/my_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:unitrail/views/login_page.dart';
import 'Components/text_field_email.dart';
import 'Components/text_field_password.dart';
import 'Components/tile.dart';
import 'Widgets/utils.dart';
import 'Widgets/back_button.dart';
import 'package:sizer/sizer.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController studentID = TextEditingController();

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
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
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
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Tile(imagePath: 'assets/images/Logo1.png'),
            SizedBox(height: 2.h,),
            Text("CREATE AN ACCOUNT!", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),),
            SizedBox(height: 2.h,),
            SizedBox(
               height: 6.h,
                width: 98.w,
              child: UserInputField(
                individualController: firstNameController, 
                hintText: "Name", 
                hideText: false, 
                icon: Icon(Icons.person_3_sharp), 
                colorForBox: Colors.white, 
                hintTextColor: Color(0xFF104547)
              ),
            ),
            SizedBox(height: .5.h,),
            SizedBox(
              height: 6.h,
              width: 98.w,
              child: UserInputField(
                individualController: lastNameController, 
                hintText: "Last Name", 
                hideText: false, 
                icon: Icon(Icons.person_3_sharp), 
                colorForBox: Colors.white, 
                hintTextColor: Color(0xFF104547)
              ),
            ),
            TextfieldEmail(
                controller: emailController,
                hintText: 'Enter email',
                obscureText: false,
                icon: Icon(Icons.email)
            ),
            SizedBox(
              height: 6.h,
              width: 98.w,
              child: UserInputField(
                individualController: studentID, 
                hintText: "Student ID", 
                hideText: false, 
                icon: Icon(Icons.person_3_sharp), 
                colorForBox: Colors.white, 
                hintTextColor: Color(0xFF104547)
              ),
            ),
            TextfieldPassword(
              controller: passwordController,
              hintText: 'Enter Password',
              obscureText: true,
              icon: Icon(Icons.password),
            ),
            SizedBox(height: 0.75.h,),
          MyButton(
                title: 'SIGN UP',
                color: Colors.white,
                onPressed: () async {
                  final isValid = formKey.currentState!.validate();
                  if (!isValid) return;
                  try {
                    await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text)
                        .then((value) {
                      FirebaseFirestore.instance
                          .collection('Users')
                          .doc(value.user?.uid)
                          .set({
                        "email": value.user?.email,
                        "firstName": firstNameController.text,
                        "lastName": lastNameController.text,
                        "studentID": studentID.text,
                        "classes": {},
                        "navigations": {},
                      });
                    });
                  } on FirebaseAuthException catch (e) {
                    print(e);
      
                    Utils().showSnackBar(e.message);
                  }
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Login();
                      },
                    ),
                  );
                }
              ),
              TextButton.icon(
                style: TextButton.styleFrom(foregroundColor: Colors.white ),
                onPressed: (){ Navigator.of(context).pop();}, 
                icon: Icon(Icons.arrow_back_ios), 
                label: Text("Go back?", style: TextStyle(fontSize: 18, color: Colors.white),),
              )
                
          ],
        ),
      ),
      )
    );
  }
}
