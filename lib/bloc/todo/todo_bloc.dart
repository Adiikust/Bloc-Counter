import 'package:bloc/bloc.dart';
import 'package:bloc_counter/bloc/todo/todo_event.dart';
import 'package:bloc_counter/bloc/todo/todo_state.dart';

class TodoListBloc extends Bloc<TodoListEvent, TodoListState> {
  final List<String> list = [];
  TodoListBloc() : super(const TodoListState()) {
    on<AddTodoListItem>(_addTodoItem);
    on<RemoveTodoListItem>(_deleteTodoItem);
  }
  void _addTodoItem(AddTodoListItem event, Emitter<TodoListState> emit) {
    list.add(event.item);
    emit(state.copyWith(list: List.from(list)));
  }

  ///index date delete
  // void _deleteTodoItem(RemoveTodoListItem event, Emitter<TodoListState> emit) {
  //   list.removeAt(event.index);
  //   emit(state.copyWith(list: List.from(list)));
  // }

  ///object date delete
  void _deleteTodoItem(RemoveTodoListItem event, Emitter<TodoListState> emit) {
    list.remove(event.index);
    emit(state.copyWith(list: List.from(list)));
  }
}
