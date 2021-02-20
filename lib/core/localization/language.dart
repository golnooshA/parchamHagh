import 'package:flutter/material.dart';

abstract class Language {
  static Language of(BuildContext context) {
    return Localizations.of<Language>(context, Language);
  }

  Locale get locale;

  String get languageName;

  String get farsiLanguageName;

  String get arabicLanguageName;

  String get appName;

  String get menu;

  String get mainPageWord;

  String get filterWord;

  String get categoriesWord;

  String get languageWord;

  String get recordFileWodk;

  String get bookFileWord;

  String get videoFileWord;

  String get videoListWord;

  String get pauseWord;

  String get playWord;

  String get bookmarkWord;

  String get createCommnetWord;

  String get createWord;

  String get myCommentWord;

  String get commentText;

  String get aboutUsWord;

  String get settingWord;

  String get country;

  String get iran;

  String get kuwait;

  String get india;

  String get turkey;

  String get iraq;

  String get saudiArabia;

  String get lebanon;

  String get bahrain;

  String get qatar;

  String get unitedArabEmirates;

  String get syria;

  String get pakistan;

  String get skip;

  String get login;

  String get regiester;

  String get passwordWord;

  String get commnetIsEmptyError;

  String get usernameEmptyWarning;

  String get usernameInvalidError;

  String get emailEmptyWarning;

  String get emailInvalidError;

  String get countryUnselectedError;

  String get passwordEmptyWarning;

  String get passwordIsShort;

  String get passwordInvalidError;

  String get profileImageError;

  String get shareContentWord;

  String get connectionWithUsWord;

  String get followUsWord;

  String get pageWord;

  String get summaryWord;

  String get seasonWord;

  String get specificationsWord;

  String get timeWord;

  String get senfWord;

  String get speakerWord;

  String get writterWord;

  String get capacityWord;

  String get dateWord;

  String get hourWord;

  String get minuteWord;

  String get downloadArabicPdf;

  String get downloadFarsiPdf;

  String get loading;

  String get next;

  String get chooseFromGalleryWord;

  String get chooseFromCameraWord;

  String get cancel;

  String get registeredSuccessfully;

  String get logoutSuccessful;


  String getCountryByCode(String code){
    switch(code?.toUpperCase()){
      case 'IR':
        return iran;

      case 'KW':
        return kuwait;

      case 'IN':
        return india;

      case 'TR':
        return turkey;

      case 'IQ':
        return iraq;

      case 'SA':
        return saudiArabia;

      case 'LB':
        return lebanon;

      case 'BH':
        return bahrain;

      case 'QA':
        return qatar;

      case 'AE':
        return unitedArabEmirates;

      case 'SY':
        return syria;

      case 'PK':
        return pakistan;

      default:
        return country;
    }
  }
}
