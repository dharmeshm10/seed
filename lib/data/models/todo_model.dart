import 'package:seed/domain/entities/todo_entity.dart';

class TodoModel extends TodoEntity {
  TodoModel({
    required super.id,
    required super.description,
    required super.completed,
  });

  factory TodoModel.fromJson(dynamic json) => TodoModel(
        id: json['_id'],
        description: json['description'],
        completed: json['completed'] ?? false,
      );

  static List<TodoModel> fromJsonList(List<dynamic> jsonList) =>
      jsonList.map((json) => TodoModel.fromJson(json)).toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (completed != null) {
      json['completed'] = completed;
    }
    if (description != null) {
      json['description'] = description;
    }
    return json;
  }

  TodoModel.castFromEntity(final TodoEntity todo)
      : super(
          id: todo.id,
          description: todo.description,
          completed: todo.completed,
        );
}
