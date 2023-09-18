import 'package:dio/dio.dart';

class ProjectNetworkManager {
  late final Dio _dio;

  ProjectNetworkManager._() {
    _dio = Dio(BaseOptions(baseUrl: "pub.dev"));
    _dio.options = BaseOptions();
  }

  static ProjectNetworkManager instance = ProjectNetworkManager._();
  Dio get service => _dio;

  void addBaseHeader(String token) {
    _dio.options = _dio.options.copyWith(
      headers: {"Authorization": token},
    );
  }
}

class DurationManager {
  DurationManager._();
  static DurationManager? _manager;

  static DurationManager get manager {
    if (_manager != null) return manager!;
    _manager = DurationManager._();
    return _manager!;
  }
}
/**
 * ._() ile artık yeni data üretmeyi önler.
 * Network Manager katmanı yaparken kullanmaı doğru olmaz.
 */