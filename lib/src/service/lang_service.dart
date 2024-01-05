import 'package:flutter/material.dart';

import '../../util/helper/intl_helper.dart';

class LangService with ChangeNotifier {
  LangService({
    Locale? currentLocale,
  }) : currentLocale = currentLocale ?? IntlHelper.en;

  Locale currentLocale;

  void setLang(Language lang) {
    currentLocale = lang.locale;
    notifyListeners();
  }
}
