import 'package:dio/dio.dart';
import 'package:kara_test/models/category_response/category_response.dart';
import 'package:kara_test/models/login_response/login_response.dart';
import 'package:kara_test/models/product_response/product_response.dart';
import 'package:kara_test/models/verify_response/verify_response.dart';
import 'package:kara_test/webservices/urls.dart';
import 'package:kara_test/webservices/webservicesheaders.dart';
import 'package:retrofit/http.dart' as retrofit;
part 'webservices.g.dart';

@retrofit.RestApi(baseUrl: BASE_URL)
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @retrofit.POST(LOGIN)
  @retrofit.Headers(generalHeader)
  Future<LoginResponse> login(
      @retrofit.Field("phone_number") String phoneNumber);

  @retrofit.POST(VERIRY)
  @retrofit.Headers(generalHeader)
  Future<VerifyResponse> verify(
      @retrofit.Field("phone_number") String phoneNumber,
      @retrofit.Field("verify_code") String verifyCode);

  @retrofit.POST(PRODUCTS)
  @retrofit.Headers(generalHeader)
  Future<ProductResponse> products();

  @retrofit.POST(CATEGORY)
  @retrofit.Headers(generalHeader)
  Future<CategoryResponse> category();
}
