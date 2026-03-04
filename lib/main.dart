import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 200),
              Text(
                "FridgeAI",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Snap, Recipe, Repeat!",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 150),
              OutlinedButton(
                onPressed: () {
                  //Navigate to login page
                  debugPrint('Login button pressed');
                },
                style: OutlinedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  minimumSize: const Size(150, 50),
                ),
                child: const Text("Login"),
              )
            ]
          ),
        ),
        /*
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(50),
            padding: const EdgeInsets.all(10),
            height: 200,
            width: 200,
            alignment: Alignment.topCenter,
            child: Text(
              "FridgeAI",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        */
      ),
    );
  }
}
