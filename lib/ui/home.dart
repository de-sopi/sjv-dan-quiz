import 'package:flutter/material.dart';
import 'package:sjv_dan_quiz/models/difficulty.dart';
import 'package:sjv_dan_quiz/ui/custom_app_bar.dart';
import 'package:sjv_dan_quiz/ui/home/difficulty_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Quiz',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            DifficultyButton(Difficulty.easy),
            const SizedBox(height: 10),
            DifficultyButton(Difficulty.medium),
            const SizedBox(height: 10),
            DifficultyButton(Difficulty.hard),
          ],
        ),
      ),
    );
  }
}
