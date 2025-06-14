import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sjv_dan_quiz/models/language_provider.dart';
import 'package:yaml/yaml.dart';

final currentTranslationProvider = FutureProvider<Map<String, dynamic>>((
  ref,
) async {
  final currentLanguage = ref.watch(currentLanguageProvider);
  final yamlString = await rootBundle.loadString(
    'translations/${currentLanguage.name}.yaml',
  );
  final yamlMap = loadYaml(yamlString);
  Map<String, dynamic> convertYaml(YamlMap yaml) {
    return yaml.map((key, value) {
      if (value is YamlMap) {
        return MapEntry(key.toString(), convertYaml(value));
      } else {
        return MapEntry(key.toString(), value.toString());
      }
    });
  }

  return convertYaml(yamlMap);
});

dynamic _readYaml(dynamic yamlMap, List<String> keys) {
  dynamic current = yamlMap;

  for (final key in keys) {
    if (current is Map && current.containsKey(key)) {
      current = current[key];
    } else {
      return null;
    }
  }

  return current;
}

String translate(WidgetRef ref, List<String> keys) {
  var currentTranslation = ref.watch(currentTranslationProvider);
  return currentTranslation.when(
    data: (map) {
      final result = _readYaml(map, keys);
      return result is String ? result : keys.join('.');
    },
    loading: () => '...',
    error: (e, st) => "Error: ${e.toString()}",
  );
}
