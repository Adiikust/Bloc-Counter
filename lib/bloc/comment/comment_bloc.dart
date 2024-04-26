import 'package:bloc/bloc.dart';
import 'package:bloc_counter/bloc/comment/comment_event.dart';
import 'package:bloc_counter/bloc/comment/comment_state.dart';
import 'package:bloc_counter/repository/api_repository.dart';
import 'package:bloc_counter/utils/enum.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  final ApiRepository _apiRepository = ApiRepository();

  CommentBloc() : super(const CommentState()) {
    on<GetCommentApi>(_commentApiFetch);
  }

  Future<void> _commentApiFetch(
      GetCommentApi event, Emitter<CommentState> emit) async {
    await _apiRepository.fetchCovidList().then((value) {
      emit(state.copyWith(
          userState: UserState.loaded, getCommentApiModel: value));
    }).onError((error, stackTrace) {
      emit(state.copyWith(userState: UserState.error));
    });
  }
}
