import 'package:flutter/material.dart';
import 'package:to_do_app/constants.dart';
import 'package:to_do_app/widgets/reusable_text_widget.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF9E7),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: 'Welcome To',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Clear',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Tap or Swipe',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' to begin',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
            ),
            Hero(
              tag: 'demo',
              child: Container(
                height: 0.0,
                child: Image.asset(
                  'images/Demo1.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
