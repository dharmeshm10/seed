import 'dart:async';

import 'package:seed/data/datasources/local/local_database/todo_local_datasource.dart';
import 'package:seed/data/datasources/remote/todo_remote_datasource.dart';
import 'package:seed/data/models/todo_model.dart';
import 'package:seed/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl extends TodoRepository {
  final TodoRemoteDatasource todoRemoteDatasource;
  final TodoLocalDatasource todoLocalDatasource;

  TodoRepositoryImpl({
    required this.todoRemoteDatasource,
    required this.todoLocalDatasource,
  });

  @override
  Future<List<TodoModel>> getAll({bool fromLocal = false}) async {
    List<TodoModel> todos = await todoLocalDatasource.getFormattedData();
    if (todos.isEmpty || !(fromLocal ?? true)) {
      todos = await todoRemoteDatasource.getAll();

      unawaited(Future.wait(
        [
          todoLocalDatasource.deleteAll(),
          todoLocalDatasource.insertOrUpdateAll(todos),
        ],
      ));
    }
    return todos;
  }

  @override
  Future<TodoModel> create(TodoModel todoModel) async {
    final TodoModel todo = await todoRemoteDatasource.create(todoModel);
    if (todo != null) {
      await todoLocalDatasource.insertOrUpdateItem(todo);
    }
    return todo;
  }

  @override
  Future<void> delete(String id) async {
    final TodoModel todo = await todoRemoteDatasource.delete(id);
    if (todo != null) {
      await todoLocalDatasource.delete(id);
    }
  }

  @override
  Future<TodoModel> update(TodoModel model) async {
    final TodoModel todo = await todoRemoteDatasource.update(model);
    if (todo != null) {
      await todoLocalDatasource.insertOrUpdateItem(todo);
    }
    return todo;
  }
}
