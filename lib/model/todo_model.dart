import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo_model.g.dart';

@JsonSerializable()
class TodoModel {
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'subTitle')
  String? subTitle;
  @JsonKey(name: 'isCheck')
  bool? isCheck;

  TodoModel({this.title, this.subTitle, this.isCheck});

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoModelToJson(this);
}
