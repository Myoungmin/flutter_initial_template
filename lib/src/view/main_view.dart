import 'package:flutter/material.dart';
import 'package:flutter_initial_template/src/service/theme_service.dart';
import 'package:flutter_initial_template/util/lang/generated/l10n.dart';
import 'package:flutter_initial_template/util/route_path.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.current.hello,
          style: context.textTheme.titleLarge?.copyWith(
            color: context.colorScheme.onSurface,
          ),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, RoutePath.main),
          child: Text(
            S.current.hello,
            style: context.textTheme.displayLarge?.copyWith(
              color: context.colorScheme.onSurface,
            ),
          ),
        ),
      ),
    );
  }
}
