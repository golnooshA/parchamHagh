import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:parcham_hagh/core/localization/language.dart';
import 'package:parcham_hagh/core/localization/language/fa.dart';

import 'language/ar.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<Language> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['es', 'fa'].contains(locale.languageCode);

  @override
  Future<Language> load(Locale locale) {

    switch(locale.languageCode){
      case 'fa':
        return SynchronousFuture<Language>(LanguageFa(locale: locale));

      default:
        return SynchronousFuture<Language>(LanguageAr(locale: locale));
    }


  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}