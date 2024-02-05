import 'package:flutter/material.dart';
import 'package:flutter_initial_template/util/helper/intl_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final langServiceProvider =
    StateNotifierProvider<LangServiceNotifier, LangService>(
        (ref) => LangServiceNotifier());

class LangService {
  LangService({
    Locale? currentLocale,
  }) : currentLocale = currentLocale ?? IntlHelper.en;

  Locale currentLocale;
}

class LangServiceNotifier extends StateNotifier<LangService> {
  LangServiceNotifier() : super(LangService());

  void setLang(Language lang) {
    state.currentLocale = lang.locale;
  }
}
