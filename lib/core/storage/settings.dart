import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:parcham_hagh/core/router/routes.dart';

class Settings extends ChangeNotifier {

  static String languageCode = 'en';

  bool isInit = false;

  Locale _locale;

  Locale get locale => _locale;

  String _country;

  String get country => _country;

  Box box;

  String _fontFamily;
  String get fontFamily => _fontFamily;


  void init() async {
    await Hive.initFlutter();
    box = await Hive.openBox('settings');

    final lc = box.get('language_code');
    if (lc != null) {
      _locale = Locale(lc);
      languageCode = _locale.languageCode;
      setFont(languageCode);
    } else {
      setFont('en');
    }
    _locale = Locale('fa');
    isInit = true;
    notifyListeners();
  }

  void setFont(String languageCode){
    final llocale = languageCode.toLowerCase();
    switch(llocale){
      case 'ar':
        _fontFamily = 'trado';
        break;

      case 'fa':
        _fontFamily = 'yekan';
        break;

      default:
        _fontFamily = 'sfui';
    }
  }

  void setLanguageCode(String code) {
    box.put('language_code', code);
    _locale = Locale(code);
    languageCode = _locale.languageCode;
    setFont(languageCode);
    notifyListeners();
  }


  String getInitRoute() {
    return Routes.menu;
    final askedLang = box.get('asked_lang');
    final askedLogin = box.get('asked_login');
  }

  void setAskedLanguage() {
    box.put('asked_lang', true);
  }

  void setAskedLogin() {
    box.put('asked_login', true);
  }

}
