import 'package:flutter_full_learn/202/cache/shared_learn_cache.dart';
import 'package:flutter_full_learn/303/reqrest_resource/model/resource_model.dart';
import 'package:flutter_full_learn/303/reqrest_resource/service/reqres_service.dart';
import 'package:flutter_full_learn/303/reqrest_resource/view/reqres_view.dart';
import 'package:flutter_full_learn/product/service/project_dio.dart';

abstract class ReqressViewModel extends LoadingStatefull<ReqresView>
    with ProjectDioMixin {
  late final IReqresService reqresService;
  List<Data>? resources = [];
  @override
  void initState() {
    super.initState();
    reqresService = ReqresServie(service);
    _fetch();
  }

  Future<void> _fetch() async {
    changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    changeLoading();
  }
}
