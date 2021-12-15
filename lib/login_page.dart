import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinder_screen2/button_homepage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red.shade400, Colors.red.shade300],
          ),
        ),
        child: (Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 360, 20),
              child: IconButton(
                iconSize: 28,
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_rounded),
              ),
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 250,
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(fontSize: 15),
                  children: [
                    TextSpan(
                        text:
                            'By tapping Create Account or Sign In, you agree to our '),
                    TextSpan(
                        text: 'Terms',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline)),
                    TextSpan(text: '. Learn how we process your data in our '),
                    TextSpan(
                        text: 'Privacy ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline)),
                    TextSpan(
                        text: 'Policy',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline)),
                    TextSpan(text: ' and '),
                    TextSpan(
                        text: 'Cookies Policy',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline)),
                    TextSpan(text: '.'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const ButtonHomePage(
              name: 'SIGN IN WITH APPLE',
              logo: 'assets/images/apple_logo.png',
            ),
            const SizedBox(height: 10),
            const ButtonHomePage(
              name: 'SIGN IN WITH FACEBOOK',
              logo: 'assets/images/facebook_logo.png',
            ),
            const SizedBox(height: 10),
            const ButtonHomePage(
              name: 'SIGN IN WITH PHONE NUMBER',
              logo: 'assets/images/phone.png',
            ),
            const SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(fontSize: 15),
                children: [
                  TextSpan(text: 'Trouble Signing In?'),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
