import 'package:bloc_test/bloc_test.dart';
import 'package:seed/presentation/journey/todo/bloc/todo_bloc.dart';
import 'package:seed/presentation/journey/todo/bloc/todo_event.dart';
import 'package:seed/presentation/journey/todo/bloc/todo_state.dart';

class MockTodoBloc extends MockBloc<TodoEvent, TodoState> implements TodoBloc {}
