import 'package:class_state_management/controller.dart';

class HomeCountController extends Controller<int> {
  HomeCountController() : super(0);

  void increment() {
    update(state + 1);
  }
}
