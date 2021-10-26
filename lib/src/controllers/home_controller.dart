import 'package:flutter/cupertino.dart';
import 'package:testeapi/src/models/todo_model.dart';
import 'package:testeapi/src/repositories/todo_repository.dart';

class HomeController {
  List<TodoModel> todos = [];
  final TodoRepository _repository;// = ();

  final state = ValueNotifier<HomeState>(HomeState.start);

 //HomeState state = HomeState.start;

  HomeController([TodoRepository? repository]) : _repository = repository ?? TodoRepository();

  Future start() async{
    state.value = HomeState.loading;
    try {
      todos = await _repository.fetchTodos();
      state.value = HomeState.success;
    } catch (e) {
      state.value = HomeState.error;
    }
  }
}

enum HomeState { start, loading, success, error }