import 'package:flutter/material.dart';
import 'package:sjv_dan_quiz/models/difficulty.dart';
import 'package:sjv_dan_quiz/ui/home/difficulty_text.dart';

class DifficultyButton extends StatelessWidget {
  final Difficulty difficulty;
  const DifficultyButton(this.difficulty, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,

      child: ElevatedButton(
        onPressed: () {},
        child: DifficultyText(difficulty),
      ),
    );
  }
}
