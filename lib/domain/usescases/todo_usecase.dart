import 'package:seed/data/models/todo_model.dart';
import 'package:seed/domain/entities/todo_entity.dart';
import 'package:seed/domain/repositories/todo_repository.dart';

class TodoUsecase {
  final TodoRepository todoRepository;

  TodoUsecase(this.todoRepository);

  Future<List<TodoEntity>> getAll({required bool fromLocal}) async =>
      todoRepository.getAll(fromLocal: fromLocal);

  Future<TodoEntity> create(TodoEntity todo) async {
    final TodoModel todoModel = TodoModel.castFromEntity(todo);
    return todoRepository.create(todoModel);
  }

  Future<TodoEntity> update(TodoEntity todo) async {
    final TodoModel todoModel = TodoModel.castFromEntity(todo);
    return todoRepository.update(todoModel);
  }

  Future<void> delete(String id) async => todoRepository.delete(id);
}
