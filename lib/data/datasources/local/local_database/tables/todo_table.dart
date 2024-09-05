import 'package:seed/data/models/todo_model.dart';
import 'package:hive/hive.dart';
import 'package:seed/common/constants/local_database_type_constants.dart';

part 'todo_table.g.dart';

@HiveType(typeId: HiveTypeIdConstants.customerTableId)
class TodoTable extends TodoModel {
  @override
  @HiveField(1)
  String id;

  @override
  @HiveField(2)
  String description;

  @override
  @HiveField(3)
  bool completed;

  TodoTable({required this.id, required this.description, required this.completed})
      : super(
          id: id,
          description: description,
          completed: completed,
        );

  factory TodoTable.fromModel(TodoModel model) => TodoTable(
        id: model.id,
        description: model.description,
        completed: model.completed,
      );

  static TodoModel toModel(TodoTable table) => TodoModel(
        id: table.id,
        description: table.description,
        completed: table.completed,
      );
}
