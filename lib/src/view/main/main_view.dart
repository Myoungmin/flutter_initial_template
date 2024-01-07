import 'package:flutter/material.dart';
import 'package:flutter_initial_template/src/service/theme_service.dart';
import 'package:flutter_initial_template/src/view/base_view.dart';
import 'package:flutter_initial_template/src/view/main/main_view_model.dart';
import 'package:flutter_initial_template/util/lang/generated/l10n.dart';
import 'package:flutter_initial_template/util/route_path.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});



  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: MainViewModel(),
      builder: (context, viewModel) => Scaffold(
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
      ),
    );
  }
}
