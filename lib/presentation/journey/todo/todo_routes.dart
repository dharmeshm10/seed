import 'package:flutter/material.dart';

import 'package:seed/common/injector/injector.dart';
import 'package:seed/domain/usescases/todo_usecase.dart';
import 'package:seed/presentation/journey/todo/bloc/todo_bloc.dart';
import 'package:seed/presentation/journey/todo/bloc/todo_event.dart';

import 'package:seed/common/constants/route_constants.dart';
import 'package:seed/presentation/journey/todo/bloc/todo_state.dart';
import 'package:seed/presentation/journey/todo/create_todo/create_todo_screen.dart';
import 'package:seed/presentation/journey/todo/todo_list/todo_list_screen.dart';

class TodoRoutes {
  // static TodoBloc get _getTodoBloc => Injector.resolve<TodoBloc>();
  // static TodoBloc get _getTodoBloc => TodoBloc(initialState, todoUsecase!);

  static Map<String, WidgetBuilder> getAll() {
    return {
      RouteList.todoList: (context) => TodoListScreen(),
      RouteList.createTodo: (context) => CreateTodoScreen(
            onCreate: (String description) {
              // _getTodoBloc.add(AddTodo(description: description));
              Navigator.of(context).pop();
            },
          ),
    };
  }
}
