import 'package:cruelty_free_zone/localization/crueltyfreezone_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CrueltyFreeZoneLocalizationsDelegate extends LocalizationsDelegate<CrueltyFreeZoneLocalization> {
  const CrueltyFreeZoneLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'tr'].contains(locale.languageCode);

  @override
  Future<CrueltyFreeZoneLocalization> load(Locale locale) {
    return SynchronousFuture<CrueltyFreeZoneLocalization>(CrueltyFreeZoneLocalization(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate old) => false;
}