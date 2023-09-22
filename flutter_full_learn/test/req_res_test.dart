import "package:dio/dio.dart";
import "package:flutter_full_learn/303/reqrest_resource/model/resource_model.dart";
import "package:flutter_full_learn/303/reqrest_resource/service/reqres_service.dart";
import "package:flutter_full_learn/303/reqrest_resource/viewModel/reqres_provider.dart";
import "package:flutter_full_learn/product/global/resource_context.dart";
import "package:flutter_test/flutter_test.dart";
import "package:mockito/annotations.dart";

@GenerateMocks([ReqResProvider])
void main() {
  setUp(() {});

  test("saveToLocale - Test", () {
    var mockProvider = ReqResProvider(ReqresServie(Dio()));
    final resourceContext = ResourceContext();
    final result = mockProvider.saveToLocale(resourceContext, []);
    expect(result, false);
  });

  test('fetchItems - Test', () async {
    var mockProvider = ReqResProvider(MockReqResService());
    final result = await mockProvider.fetchItems();

    expect(result, isNotEmpty);
  });
}

class MockReqResService extends IReqresService {
  MockReqResService() : super(Dio());

  @override
  Future<ResourceModel?> fetchResourceItem() async {
    return ResourceModel(data: [const Data(color: 'a', id: 1)]);
  }
}
