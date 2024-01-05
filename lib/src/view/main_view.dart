import 'package:flutter/material.dart';
import 'package:flutter_initial_template/util/lang/generated/l10n.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(S.current.hello),
      ),
    );
  }
}