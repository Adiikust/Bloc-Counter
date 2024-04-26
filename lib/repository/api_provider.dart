import 'dart:convert';

import 'package:bloc_counter/model/get_comment_api_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiProvider {
  final String _url = 'https://jsonplaceholder.typicode.com/comments';

  Future<List<GetCommentApiModel>> fetchCovidList() async {
    Response response = await http.get(Uri.parse(_url));
    try {
      if (response.statusCode == 200) {
        final List result = jsonDecode(response.body) as List;
        return result.map((e) => GetCommentApiModel.fromJson(e)).toList();
      } else {
        print("sever Error");
        throw Exception(response.reasonPhrase);
      }
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return throw Exception(response.reasonPhrase);
    }
  }
}
