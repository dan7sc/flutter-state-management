import 'package:class_state_management/home/home_controller.dart';
import 'package:flutter_test/flutter_test.dart';

enum Status { empty, error, loading, success }

main() {
  late HomeController controller;

  setUp(() {
    controller = HomeController();
  });

  test('Validar o estado inicial do controller', () {
    expect(controller.state, HomeStatus.empty);
  });

  test('Validar o uso do listen', () {
    var isClicked = false;
    controller.listen((_) => isClicked = true);
    controller.login();
    expect(isClicked, isTrue);
  });
}
