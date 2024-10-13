
import 'package:dio/dio.dart';
import 'package:flutter_advance_elgamal/features/login/data/models/login_response_body.dart';
import 'package:flutter_advance_elgamal/features/sign_up/data/models/sign_up_response_body.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../features/login/data/models/login_request_body.dart';
import '../../features/sign_up/data/models/sign_up_request_body.dart';
import 'api_constant.dart';
part 'api_service.g.dart';
@RestApi(baseUrl:ApiConstant.apiBaseUrl)
abstract class ApiService{

  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstant.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
  /// Sign up
  @POST(ApiConstant.signUp)
  Future<SignUpResponseBody> signUp(@Body() SignUpRequestBody signUpRequestBody);
}
