part of 'crud_bloc.dart';

@freezed
class CrudEvent with _$CrudEvent {
  const factory CrudEvent.validateTitle({required String title}) =
      ValidateTitle;
  const factory CrudEvent.validateSubTitle({required String subtitle}) =
      ValidateSubTitle;
  const factory CrudEvent.validateIsCheck(
      {required bool isCheck, required int index}) = ValidateIsCheck;
  const factory CrudEvent.addDateToList() = AddDateToList;
  const factory CrudEvent.deleteDateToList({required int index}) =
      DeleteDateToList;
}
