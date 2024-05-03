import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo_model.g.dart';

@JsonSerializable()
class TodoModel {
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'subTitle')
  String subTitle;

  TodoModel({required this.title, required this.subTitle});

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoModelToJson(this);
}
