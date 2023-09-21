import 'package:flutter/material.dart';
import 'package:fitgroom/main.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.white], // Adjust colors as needed
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // You can add your app logo here
              Image.asset(
                'assets/images/home.jpg', // Replace with your logo image path
                width: 150,
                height: 150,
                // You can customize the image size and alignment
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to Your Fitness App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Customize text color
                ),
              ),
              SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () {
              //     // Add navigation to the next screen here
              //     Navigator.pushReplacement(
              //       context,
              //       MaterialPageRoute(builder: (context) => HomeScreen()), // Replace with your home screen
              //     );
              //   },
              //   child: Text(
              //     'Get Started',
              //     style: TextStyle(fontSize: 16),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}