import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class TodoEvent extends Equatable {}

class FetchTodos extends TodoEvent {
  final bool fromLocal;
  FetchTodos({required this.fromLocal});

  @override
  List<Object> get props => [fromLocal];
}

class AddTodo extends TodoEvent {
  final String description;
  AddTodo({required this.description});

  @override
  List<Object> get props => [description];
}

class UpdateTodo extends TodoEvent {
  final String id;
  UpdateTodo({required this.id});

  @override
  List<Object> get props => [id];
}

class DeleteTodo extends TodoEvent {
  final String id;
  DeleteTodo({required this.id});

  @override
  List<Object> get props => [id];
}
