import 'package:flutter/material.dart';
import 'package:flutter_initial_template/src/service/lang_service.dart';
import 'package:flutter_initial_template/src/service/theme_service.dart';
import 'package:flutter_initial_template/util/lang/generated/l10n.dart';
import 'package:flutter_initial_template/util/route_path.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: ref.watch(langServiceProvider).currentLocale,
      theme: ref.themeService.themeData,
      initialRoute: RoutePath.main,
      onGenerateRoute: RoutePath.onGenerateRoute,
    );
  }
}
