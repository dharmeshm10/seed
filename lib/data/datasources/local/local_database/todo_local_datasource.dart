import 'package:seed/common/constants/local_database_type_constants.dart';
import 'package:seed/common/utils/database_util.dart';
import 'package:seed/data/datasources/local/local_database/base_local_database.dart';
import 'package:seed/data/datasources/local/local_database/tables/todo_table.dart';
import 'package:seed/data/models/todo_model.dart';

class TodoLocalDatasource extends BaseLocalDataSource<TodoTable, TodoModel> {
  TodoLocalDatasource() : super(boxName: HiveTableNameConstants.todoTableName) {
    DatabaseUtil.registerAdapter<TodoTable>(TodoTableAdapter());
  }

  @override
  Future<List<TodoModel>> getFormattedData() async {
    final List<TodoTable> data = await getAll();
    return data.map(TodoTable.toModel).toList();
  }

  Future<void> insertOrUpdateItem(TodoModel todo) async {
    await put(todo.id, TodoTable.fromModel(todo));
  }

  @override
  Future<void> insertOrUpdateAll(List<TodoModel> todos) async {
    final Map<String, TodoTable> todoMap = {
      for (var todo in todos) todo.id: TodoTable.fromModel(todo)
    };
    await putAll(todoMap);
  }
}
