import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 200),
            Text(
              "FridgeAI",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Snap, Recipe, Repeat!",
              style: TextStyle(fontSize: 30, color: Colors.grey),
            ),
            SizedBox(height: 180),
            PreHomeButton(
              label: 'Login',
              onPressed: () {
                debugPrint("Login button pressed");
              },
            ),
            SizedBox(height: 15),
             PreHomeButton(
              label: 'Sign Up',
              onPressed: () {
                debugPrint("Sign up button pressed");
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Refactored LoginButton into a separate widget for better code organization and reusability
class PreHomeButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const PreHomeButton({
    required this.label,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 25),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        minimumSize: const Size(150, 50),
      ),
      child: Text(label),
    );
  }
}
