import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_full_learn/303/service/model/resource_model.dart';

abstract class IReqresService {
  final Dio dio;

  IReqresService(this.dio);

  Future<List<ResourceModel>?> fetchResourceItem();
}

enum _ReqResPath { resource }

class ReqresServie extends IReqresService {
  ReqresServie(super.dio);

  @override
  Future<List<ResourceModel>?> fetchResourceItem() async {
    final response = await dio.get('/${_ReqResPath.resource.name}');
    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is List) {
        return jsonBody.map((e) => ResourceModel.fromJson(e)).toList();
      }
    }
    return null;
  }
}
