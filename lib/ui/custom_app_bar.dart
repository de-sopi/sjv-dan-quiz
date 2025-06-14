import 'package:flutter/material.dart';
import 'package:sjv_dan_quiz/models/language.dart';
import 'package:sjv_dan_quiz/ui/app_bar/language_selector.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({Key? key})
    : super(
        key: key,
        title: const Text('My App'),
        actions: Language.values.map((lang) => LanguageSelector(lang)).toList(),
      );
}
