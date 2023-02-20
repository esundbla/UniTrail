import 'package:flutter/material.dart';
import 'components/rounded_button.dart';

class BackendTesting extends StatefulWidget {
  const BackendTesting({super.key});

  @override
  _BackendTestingState createState() => _BackendTestingState();
}

class _BackendTestingState extends State<BackendTesting> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // This provides the total width and height of our screen
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              "Testing",
              style: TextStyle(
                color: Color.fromARGB(255, 1, 16, 129),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.5),
            RoundedButton(
              text: "Test",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

