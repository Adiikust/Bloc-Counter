import 'package:bloc_counter/model/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'crud_event.dart';
part 'crud_state.dart';
part 'crud_bloc.freezed.dart';

class CrudBloc extends Bloc<CrudEvent, CrudState> {
  List<TodoModel> todoModel = [];

  CrudBloc() : super(const CrudState()) {
    on<ValidateTitle>(_validateTitle);
    on<ValidateSubTitle>(_validateSubTitle);
    on<AddDateToList>(_addDateToList);
    on<ValidateIsCheck>(_validateIsCheck);
    on<DeleteDateToList>(_deleteDateToList);
  }

  void _validateTitle(ValidateTitle event, Emitter<CrudState> emit) {
    emit(state.copyWith(title: event.title));
  }

  void _validateSubTitle(ValidateSubTitle event, Emitter<CrudState> emit) {
    emit(state.copyWith(subTitle: event.subtitle));
  }

  void _addDateToList(AddDateToList event, Emitter<CrudState> emit) {
    todoModel.add(TodoModel(
        title: state.title, subTitle: state.subTitle, isCheck: state.isCheck));
    print("##### BLOC DATA #### ${state.title}");
    print("##### BLOC DATA #### ${state.subTitle}");
    print("##### BLOC DATA #### ${todoModel[0].title}");
    print("##### BLOC DATA #### ${todoModel[0].subTitle}");
    emit(state.copyWith(todoModel: List.from(todoModel)));
  }

  void _validateIsCheck(ValidateIsCheck event, Emitter<CrudState> emit) async {
    if (state.todoModel.isNotEmpty) {
      List<TodoModel> mutableTodoModel =
          List.from(state.todoModel, growable: true);

      mutableTodoModel[event.index] = TodoModel(
        title: state.todoModel[state.index].title,
        subTitle: state.todoModel[state.index].subTitle,
        isCheck: event.isCheck,
      );

      emit(state.copyWith(todoModel: mutableTodoModel));
    }
  }

  void _deleteDateToList(
      DeleteDateToList event, Emitter<CrudState> emit) async {
    if (state.todoModel.isNotEmpty &&
        event.index >= 0 &&
        event.index < state.todoModel.length) {
      List<TodoModel> updatedTodoModel = List.from(state.todoModel);
      updatedTodoModel.removeAt(event.index);
      emit(state.copyWith(todoModel: updatedTodoModel));
    }
  }
}
