import 'package:seed/data/models/todo_model.dart';
import 'package:seed/domain/entities/todo_entity.dart';

abstract class TodoRepository {
  Future<List<TodoEntity>> getAll({bool fromLocal});

  Future<TodoEntity> create(TodoModel todo);

  Future<TodoEntity> update(TodoModel todo);

  Future<void> delete(String id);
}
