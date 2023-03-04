import 'package:flutter/material.dart';
import 'package:unitrail/views/Components/text_field.dart';
import 'package:unitrail/views/Widgets/my_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:unitrail/views/login_page.dart';
import 'Components/tile.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  void saveInformation() {
    print(firstNameController.text);
    print(lastNameController.text);
    print(passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
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
            children: [
              Tile(imagePath: 'assets/images/Logo1.png'),
            ],
          ),
          Divider(height: 200),
          Textfield(
              controller: firstNameController,
              hintText: 'First Name',
              obscureText: false,
              icon: Icon(Icons.person)),
          //Divider(height: 2),
          Textfield(
              controller: lastNameController,
              hintText: 'Last Name',
              obscureText: false,
              icon: Icon(Icons.person)),
          //Divider(height: 2),
          Textfield(
              controller: emailController,
              hintText: 'Enter email',
              obscureText: false,
              icon: Icon(Icons.email)),
          Textfield(
            controller: passwordController,
            hintText: 'Enter Password',
            obscureText: true,
            icon: Icon(Icons.password),
          ),
          MyButton(
              title: 'Sign Up',
              color: Colors.white,
              onPressed: () async {
                FirebaseAuth.instance
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
                    "studentID": "",
                    "classes": {},
                    "navigations": {},
                    });
                    });
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
              );
              })
        ],
      ),
    );
  }
}
