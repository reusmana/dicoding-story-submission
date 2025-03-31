class Localization {
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
