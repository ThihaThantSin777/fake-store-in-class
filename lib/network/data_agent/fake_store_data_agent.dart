import 'package:fake_store_pratice/data/vo/fake_store_vo/fake_store_vo.dart';

abstract class FakeStoreDataAgent{

  Future<List<FakeStoreVO>?>getAllProduct();
}