class GetCommentApiModel {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  GetCommentApiModel({this.postId, this.id, this.name, this.email, this.body});

  GetCommentApiModel.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['postId'] = postId;
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['body'] = body;
    return data;
  }
}
