import 'package:bloc_counter/model/get_comment_api_model.dart';
import 'package:bloc_counter/utils/enum.dart';
import 'package:equatable/equatable.dart';

class CommentState extends Equatable {
  final UserState userState;
  final List<GetCommentApiModel> getCommentApiModel;

  const CommentState(
      {this.userState = UserState.loading, this.getCommentApiModel = const []});

  CommentState copyWith(
      {UserState? userState, List<GetCommentApiModel>? getCommentApiModel}) {
    return CommentState(
      getCommentApiModel: getCommentApiModel ?? this.getCommentApiModel,
      userState: userState ?? this.userState,
    );
  }

  @override
  List<Object?> get props => [userState, getCommentApiModel];
}
