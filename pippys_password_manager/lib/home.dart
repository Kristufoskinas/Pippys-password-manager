import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pippys_password_manager/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Your Passwords:"),
          leading: IconButton(
              onPressed: () {
                print(isLoggedIn);
                print(FirebaseAuth.instance.currentUser);
              },
              icon: Icon(Icons.info)),
        ),
        body: IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacementNamed(context, '/welcome');
            },
            icon: Icon(Icons.logout)),
      ),
    );
  }
}
