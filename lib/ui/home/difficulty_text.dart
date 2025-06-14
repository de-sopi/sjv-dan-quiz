import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sjv_dan_quiz/models/difficulty.dart';
import 'package:sjv_dan_quiz/models/translation_provider.dart';

class DifficultyText extends ConsumerWidget {
  final Difficulty difficulty;
  const DifficultyText(this.difficulty, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(translate(ref, ['difficulty', difficulty.name]));
  }
}
