part of 'crud_bloc.dart';

@freezed
class CrudState with _$CrudState {
  const factory CrudState({
    @Default("") String title,
    @Default("") String subTitle,
    @Default(false) bool isCheck,
    @Default(0) int index,
    @Default([]) List<TodoModel> todoModel,
  }) = _CrudState;
}
