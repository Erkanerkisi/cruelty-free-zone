import 'package:flutter/material.dart';

class CrueltyFreeZoneLocalization {
  CrueltyFreeZoneLocalization(this.locale);

  final Locale locale;

  static CrueltyFreeZoneLocalization of(BuildContext context) {
    return Localizations.of<CrueltyFreeZoneLocalization>(
        context, CrueltyFreeZoneLocalization);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'doesNotTestButton': "Companies that does NOT test on animals",
      'doesTestButton': "Companies that does test on animals",
      'title': 'Hello World',
      'noListFound': 'Mail has not been sent due to no list item'
    },
    'tr': {
      'doesNotTestButton': "Hayvanlar üzerinde deney yapmayan firmalar",
      'doesTestButton': "Hayvanlar üzerinde deney yapan firmalar",
      'title': 'Başlık',
      'noListFound': 'Boş mail gönderilemez.',
    },
  };

  String get doesNotTestButton {
    return _localizedValues[locale.languageCode]['doesNotTestButton'];
  }

  String get doesTestButton {
    return _localizedValues[locale.languageCode]['doesTestButton'];
  }

  String get noListFound {
    return _localizedValues[locale.languageCode]['noListFound'];
  }

  String get title {
    return _localizedValues[locale.languageCode]['title'];
  }
}
