 import 'package:flutter_test/flutter_test.dart';
import 'package:testeapi/src/repositories/todo_repository.dart';

main() {
 final repository = TodoRepository();
  test('deve trazer uma lista de todo modles', () async {
    final list = await repository.fetchTodos();
    //print(list[0].title);
    //print(list[0].userId);
    //print(list[0].completed);
    expect(list[1].title, 'quis ut nam facilis et officia qui');
  });
}