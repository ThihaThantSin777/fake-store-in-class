import 'package:dio/dio.dart';
import 'package:fake_store_pratice/data/vo/fake_store_vo/fake_store_vo.dart';
import 'package:fake_store_pratice/network/data_agent/fake_store_data_agent.dart';

import '../api/fake_store_api.dart';

class FakeStoreDataAgentImpl extends FakeStoreDataAgent {

  late FakeStoreAPI _fakeStoreAPI;

  FakeStoreDataAgentImpl._(){
    _fakeStoreAPI=FakeStoreAPI(Dio());
  }

  static final FakeStoreDataAgentImpl _singleton = FakeStoreDataAgentImpl._();

  factory FakeStoreDataAgentImpl() => _singleton;

  @override
  Future<List<FakeStoreVO>?> getAllProduct() {
    return _fakeStoreAPI.getAllProduct();
  }

}
