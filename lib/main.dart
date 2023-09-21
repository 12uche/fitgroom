import 'package:flutter/material.dart';
import 'package:fitgroom/welcome_page.dart';

void main() => runApp(const HeroApp());


class HeroApp extends StatelessWidget {
  const HeroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FitGroom',
      home: WelcomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness App'),
      ),
      body: Column(
        children: <Widget>[
          // User Profile Picture
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/user.png'),
          ),
          
          // Motivational Quote
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Stay motivated and keep fit!',
              style: TextStyle(fontSize: 18),
            ),
          ),

          // Quick Access Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // Navigate to Workout Plans Screen
                  Navigator.pushNamed(context, '/workout_plans');
                },
                child: const Text('Workout Plans'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to Exercise Library Screen
                  Navigator.pushNamed(context, '/exercise_library');
                },
                child: const Text('Exercise Library'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
