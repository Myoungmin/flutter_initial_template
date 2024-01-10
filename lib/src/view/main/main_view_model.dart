import 'package:flutter_initial_template/src/view/base_view_model.dart';

class MainViewModel extends BaseViewModel {
  Future<void> circularIndicatorTest(int seconds) async {
    isBusy = true;
    await Future.delayed(Duration(seconds: seconds));
    isBusy = false;
  }
}
