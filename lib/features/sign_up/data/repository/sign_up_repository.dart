import 'package:flutter_advance_elgamal/core/networking/api_error_handler.dart';
import 'package:flutter_advance_elgamal/core/networking/api_result.dart';
import 'package:flutter_advance_elgamal/core/networking/api_service.dart';
import 'package:flutter_advance_elgamal/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:flutter_advance_elgamal/features/sign_up/data/models/sign_up_response_body.dart';

class SignUpRepository{
  ApiService _apiService;
  SignUpRepository(this._apiService);

  Future<ApiResult<SignUpResponseBody>> signUp (SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}