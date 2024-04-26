import 'package:equatable/equatable.dart';

abstract class TodoListEvent extends Equatable {
  const TodoListEvent();
  @override
  List<Object?> get props => [];
}

class AddTodoListItem extends TodoListEvent {
  final String item;
  const AddTodoListItem({required this.item});

  @override
  List<Object?> get props => [item];
}

class RemoveTodoListItem extends TodoListEvent {
  final Object index;
  const RemoveTodoListItem({required this.index});

  @override
  List<Object?> get props => [index];
}
