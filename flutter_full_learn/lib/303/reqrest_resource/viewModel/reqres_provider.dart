import 'package:flutter_full_learn/303/reqrest_resource/model/resource_model.dart';
import 'package:flutter_full_learn/303/reqrest_resource/service/reqres_service.dart';

class ReqResProvider {
  final IReqresService reqresService;
  List<Data>? resources = [];

  ReqResProvider(this.reqresService) {
    _fetch();
  }

  Future<void> _fetch() async {
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
  }
}
