import 'package:riverpod/riverpod.dart';
import 'package:sjv_dan_quiz/models/language.dart';

class CurrentLanguageNotifier extends Notifier<Language> {
  void change(Language language) {
    state = language;
  }

  @override
  Language build() {
    return Language.en;
  }
}

final currentLanguageProvider =
    NotifierProvider<CurrentLanguageNotifier, Language>(
      () => CurrentLanguageNotifier(),
    );