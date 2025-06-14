import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sjv_dan_quiz/models/language.dart';
import 'package:sjv_dan_quiz/models/language_provider.dart';

class LanguageSelector extends ConsumerWidget {
  final Language lang;
  const LanguageSelector(this.lang, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: () {
        ref.read(currentLanguageProvider.notifier).change(lang);
      },
      child: Text(
        lang.name,
        style: TextStyle(
          fontWeight: ref.watch(currentLanguageProvider) == lang
              ? FontWeight.bold
              : FontWeight.normal,
        ),
      ),
    );
  }
}
