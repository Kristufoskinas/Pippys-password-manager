import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: screenHeight * 0.2,
                ),
                const Text("Welcome to Pippy's Password Manager"),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                buildButton(screenWidth, "Log In", () {
                  print("The Login button was pressed!");
                }),
                const SizedBox(
                  height: 20,
                ),
                buildButton(screenWidth, "Register", () {
                  print("The Register button was pressed!");
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButton(double screenWidth, String text, VoidCallback onPressed) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          minimumSize: WidgetStateProperty.all<Size>(
              Size(screenWidth * 0.8, 50)), // Width and height
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
          backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
        ),
        child: Text(text),
      ),
    );
  }
}
