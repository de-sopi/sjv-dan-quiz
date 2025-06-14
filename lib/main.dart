import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sjv_dan_quiz/ui/home.dart';

void main() {
  runApp(ProviderScope(child: SjvDanQuiz()));
}

class SjvDanQuiz extends ConsumerWidget {
  const SjvDanQuiz({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'SJV Dank Quiz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: const Home(),
    );
  }
}
