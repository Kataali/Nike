import 'package:flutter/material.dart';
import 'screens/homepage.dart';

void main() {
  runApp(const Nike());
}

class Nike extends StatelessWidget {
  const Nike({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'homeScreen',
      routes: const {
        // 'homeScreen': (context) => const WelcomeScreen();
      },
      home: const WelcomeScreen(),
    );
  }
}

