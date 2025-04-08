import 'package:freezed_annotation/freezed_annotation.dart';

part 'localization.freezed.dart';

@freezed
class Localization with _$Localization {
  static String getFlag(String locale) {
    switch (locale) {
      case 'id':
        return '🇮🇩';
      case 'en':
        return '🇬🇧';
      default:
        return '🇮🇩';
    }
  }
}
