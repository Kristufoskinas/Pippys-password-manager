import 'package:firebase_core/firebase_core.dart';
import 'package:pippys_password_manager/firebase_options.dart';

// Global variable to track login status
bool isLoggedIn = false;

// Validators
String? emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter an email';
  }
  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
    return 'Please enter a valid email';
  }
  return null;
}

String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your password';
  }
  if (value.length < 6) {
    return 'Password must be at least 6 characters';
  }
  return null;
}

// Firebase initialization handler
Future<void> initializeFirebase() async {
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    print('Failed to initialize Firebase: $e');
    throw Exception('Firebase initialization failed');
  }
}

// Routes
class AppRoutes {
  static const home = '/';
  static const welcome = '/welcome';
  static const signUp = '/signUp';
  static const signIn = '/signIn';
}
