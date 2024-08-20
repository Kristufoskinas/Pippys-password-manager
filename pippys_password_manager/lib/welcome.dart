import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = constraints.maxWidth;
            final screenHeight = constraints.maxHeight;

            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Welcome to \nPippy's Password Manager",
                    style: TextStyle(
                      fontSize: screenHeight * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: screenHeight * 0.06),
                  _buildButton(
                    context,
                    screenWidth,
                    screenHeight,
                    "Log In",
                    () => Navigator.pushNamed(context, "/signIn"),
                  ),
                  const SizedBox(height: 20),
                  _buildButton(
                    context,
                    screenWidth,
                    screenHeight,
                    "Register",
                    () => Navigator.pushNamed(context, '/signUp'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, double screenWidth,
      double screenHeight, String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        minimumSize: Size(screenWidth * 0.8, screenHeight * 0.062),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: screenHeight * 0.025),
      ),
    );
  }
}
