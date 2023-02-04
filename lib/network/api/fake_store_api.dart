
import 'package:dio/dio.dart';
import 'package:fake_store_pratice/constant/api_constant.dart';
import 'package:fake_store_pratice/data/vo/fake_store_vo/fake_store_vo.dart';
import 'package:retrofit/http.dart';

part 'fake_store_api.g.dart';

@RestApi(baseUrl: kBaseURL)
abstract class FakeStoreAPI{

  factory FakeStoreAPI(Dio dio)=>_FakeStoreAPI(dio);

  @GET(kGetAllProductEndPoint)
  Future<List<FakeStoreVO>>getAllProduct();

}