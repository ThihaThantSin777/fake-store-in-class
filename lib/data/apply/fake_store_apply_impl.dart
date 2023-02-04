import 'package:fake_store_pratice/data/apply/fake_store_apply.dart';
import 'package:fake_store_pratice/data/vo/fake_store_vo/fake_store_vo.dart';
import 'package:fake_store_pratice/network/data_agent/fake_store_data_agent.dart';
import 'package:fake_store_pratice/network/data_agent/fake_store_data_agent_impl.dart';

class FakeStoreApplyImpl extends FakeStoreApply {
  FakeStoreApplyImpl._();

  static final FakeStoreApplyImpl _singleton = FakeStoreApplyImpl._();

  factory FakeStoreApplyImpl() => _singleton;

  final FakeStoreDataAgent _fakeStoreDataAgent = FakeStoreDataAgentImpl();

  @override
  Future<List<FakeStoreVO>?> getAllProduct() =>
      _fakeStoreDataAgent.getAllProduct();
}
