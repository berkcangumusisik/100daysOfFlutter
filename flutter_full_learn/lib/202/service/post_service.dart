import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

class PostService {
  final Dio _dio;
  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));
  Future<bool> addItemToService(PostModel postModel) async {
    try {
      final response =
          await _dio.post(_PostServicePaths.posts.name, data: postModel);

      return response.statusCode == HttpStatus.created;
    } catch (_) {
      print("a");
    }
    return false;
  }

  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    try {
      final response = await _dio.get(_PostServicePaths.posts.name);

      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;

        if (_datas is List) {
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } catch (_) {
      print("a");
    }

    return null;
  }
}

enum _PostServicePaths { posts, comments }
