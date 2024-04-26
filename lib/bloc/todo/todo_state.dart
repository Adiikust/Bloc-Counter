import 'package:equatable/equatable.dart';

class TodoListState extends Equatable {
  final List<String> todoList;
  const TodoListState({this.todoList = const []});

  TodoListState copyWith({required List<String> list}) {
    return TodoListState(todoList: list ?? todoList);
  }

  @override
  List<Object?> get props => [todoList];
}
