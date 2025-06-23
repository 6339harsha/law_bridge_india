import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:law_bridge_india/screen/login_screen.dart'; // Ensure this path is correct
import 'package:law_bridge_india/firebase_options.dart'; // Import Firebase options

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter engine is initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Use generated options
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Law Bridge India',
      theme: ThemeData(
        primarySwatch: Colors.blue, // You'll customize this for your theme
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginScreen(), // Your first screen
      debugShowCheckedModeBanner: false, // Remove debug banner
    );
  }
}
