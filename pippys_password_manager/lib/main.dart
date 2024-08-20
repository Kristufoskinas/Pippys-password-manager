import 'package:flutter/material.dart';
import 'package:pippys_password_manager/global.dart';
import 'package:pippys_password_manager/home.dart';
import 'package:pippys_password_manager/register.dart';
import 'package:pippys_password_manager/sign_in.dart';
import 'package:pippys_password_manager/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.welcome: (context) => const WelcomeScreen(),
        AppRoutes.signUp: (context) => const RegisterScreen(),
        AppRoutes.signIn: (context) => const SignInScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: isLoggedIn ? AppRoutes.home : AppRoutes.welcome,
    );
  }
}
