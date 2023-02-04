
import 'package:fake_store_pratice/data/vo/fake_store_vo/fake_store_vo.dart';

abstract class FakeStoreApply{
  Future<List<FakeStoreVO>?>getAllProduct();
}