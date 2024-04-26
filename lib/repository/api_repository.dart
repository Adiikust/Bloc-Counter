import 'package:bloc_counter/model/get_comment_api_model.dart';
import 'package:bloc_counter/repository/api_provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<List<GetCommentApiModel>> fetchCovidList() {
    return _provider.fetchCovidList();
  }
}
