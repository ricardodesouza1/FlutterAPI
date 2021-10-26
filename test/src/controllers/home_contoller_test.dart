import 'package:flutter_test/flutter_test.dart';
import 'package:testeapi/src/controllers/home_controller.dart';
import 'package:testeapi/src/repositories/todo_repository.dart';

main() {
  final repository = TodoRepository();

  final controller = HomeController(repository);
  test('deve preencer ariavel', () async{ 

    expect(controller.state, HomeState.start);
    await controller.start();
    expect(controller.state, HomeState.success);
    expect(controller.todos.isNotEmpty, true);
  },);
}