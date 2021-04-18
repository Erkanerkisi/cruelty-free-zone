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
      'noListFound': 'Mail has not been sent due to no list item',
      'welcomePage1': "Rabbits don't use eyeliner! Mice don't bathe in shampoo!  Monkeys do not use sunscreen cream, pigs do not use toothpaste.",
      'welcomePage2': "Cosmetic tests on animals and the sale of cosmetics tested on animals have been banned by the EU. Every year, 100 million animals worldwide die in agony during these tests. 274,000 animals die a day!",
      'welcomePage3': "In our country, the Animal Protection Law No. 5199 is a law that allows experimentation on animals for research 'Scientific' (including cosmetic product tests).",

    },
    'tr': {
      'doesNotTestButton': "Hayvanlar üzerinde deney yapmayan firmalar",
      'doesTestButton': "Hayvanlar üzerinde deney yapan firmalar",
      'title': 'Başlık',
      'noListFound': 'Boş mail gönderilemez.',
      'welcomePage1': "Tavşanlar göz kalemi kullanmaz! Fareler şampuanla yıkanmaz!  Maymunlar güneş koruyucu krem, domuzlar diş macunu kullanmaz.",
      'welcomePage2': "  AB tarafından hayvanlar üzerinde kozmetik testlerinin yapılması ve hayvanlar üzerinde test edilen kozmetiklerin satışı yasaklandı. Dünya genelinde her yıl 100 milyon hayvan bu testler esnasında acı çekerek ölüyor. Günde 274.000 hayvan ölüyor!",
      'welcomePage3': "  Ülkemizde 5199 Sayılı Hayvanları Koruma Kanunu 'Bilimsel' (Kozmetik ürün testleri de buna dahil) araştırmalar için hayvanlar üzerinde deney yapılmasına izin veren bir kanun.",
    },
  };
  String get welcomePage1Body {
    return _localizedValues[locale.languageCode]['welcomePage1'];
  }
  String get welcomePage2Body {
    return _localizedValues[locale.languageCode]['welcomePage2'];
  }
  String get welcomePage3Body {
    return _localizedValues[locale.languageCode]['welcomePage3'];
  }

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
