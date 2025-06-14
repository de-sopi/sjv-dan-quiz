import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sjv_dan_quiz/models/language_provider.dart';

class SelectLanguage extends ConsumerStatefulWidget {
  const SelectLanguage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends ConsumerState<SelectLanguage> {
  bool showSelectLanguage = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        showSelectLanguage ? Icon(Icons.language) : Text('bla'),
      ],
    );
  }
}
