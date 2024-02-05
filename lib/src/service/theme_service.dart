import 'package:flutter/material.dart';
import 'package:flutter_initial_template/theme/foundation/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeServiceProvider =
    StateNotifierProvider<ThemeServiceNotifier, ThemeService>(
        (ref) => ThemeServiceNotifier());

class ThemeService {
  ThemeService({
    AppTheme? theme,
  }) : theme = theme ?? AppTheme();

  // 현재 테마
  AppTheme theme;

  ThemeData get themeData {
    return ThemeData(
      scaffoldBackgroundColor: theme.colorScheme.surface,
      appBarTheme: AppBarTheme(
        backgroundColor: theme.colorScheme.surface,
        elevation: 0,
        centerTitle: false,
        iconTheme: IconThemeData(
          color: theme.colorScheme.onSurface,
        ),
        titleTextStyle: theme.textTheme.displayMedium?.copyWith(
          color: theme.colorScheme.onSurface,
        ),
      ),
    );
  }
}

class ThemeServiceNotifier extends StateNotifier<ThemeService> {
  ThemeServiceNotifier() : super(ThemeService());

  void toggleTheme() {
    if (state.theme.brightness == Brightness.light) {
      state.theme = AppTheme(brightness: Brightness.dark);
    } else {
      state.theme = AppTheme(brightness: Brightness.light);
    }
  }
}

extension ThemeServiceExt on WidgetRef {
  ThemeService get themeService => watch(themeServiceProvider);
  AppTheme get theme => themeService.theme;
  ColorScheme get colorScheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;
}
