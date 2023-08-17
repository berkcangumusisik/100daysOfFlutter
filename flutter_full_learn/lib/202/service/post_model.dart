class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostModel({userId, id, title, body});

  PostModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}

/**
 * fromJson() ve toJson() metodları ile json verilerini dönüştürüyoruz. 
 * fromJson() ile json verilerini PostModel nesnesine dönüştürüyoruz.
 * toJson() ile PostModel nesnesini json verisine dönüştürüyoruz.
 */

