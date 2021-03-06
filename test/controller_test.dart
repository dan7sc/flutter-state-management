import 'package:class_state_management/controller.dart';
import 'package:flutter_test/flutter_test.dart';

enum Status { empty, error, loading, success }

main() {
  late Controller<Status> controller;

  setUp(() {
    controller = Controller<Status>(Status.empty);
  });

  test('Validar o estado inicial do controller', () {
    expect(controller.state, Status.empty);
  });

  test('Validar o uso do listen', () {
    var isClicked = false;
    controller.listen((_) => isClicked = true);
    controller.update(Status.loading);
    expect(isClicked, isTrue);
  });
}
