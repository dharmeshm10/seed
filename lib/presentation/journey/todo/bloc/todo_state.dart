import 'package:flutter/material.dart';
import 'package:seed/domain/entities/todo_entity.dart';

@immutable
abstract class TodoState {
  final List<TodoEntity> todos;
  final bool loading;
  const TodoState({
    required this.todos,
    required this.loading,
  });
}

class InitialTodos extends TodoState {
  InitialTodos() : super(todos: [], loading: false);
}

class LoadingTodos extends TodoState {
  LoadingTodos({
    required List<TodoEntity> todos,
    super.loading = true,
  }) : super(todos: []);
}

class LoadedTodos extends TodoState {
  LoadedTodos({required List<TodoEntity> todos})
      : super(todos: todos, loading: false);
}

class ErrorTodos extends TodoState {
  const ErrorTodos({super.todos = const [], super.loading = false}) : super();
}
