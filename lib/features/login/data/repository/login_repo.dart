import 'package:flutter_advance_elgamal/core/networking/api_error_handler.dart';
import 'package:flutter_advance_elgamal/core/networking/api_result.dart';
import 'package:flutter_advance_elgamal/features/login/data/models/login_request_body.dart';
import 'package:flutter_advance_elgamal/features/login/data/models/login_response_body.dart';

import '../../../../core/networking/api_service.dart';

class LoginRepo{

  // this is injected from outside when creating the object of this class
  final ApiService apiService;
  LoginRepo(this.apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async {
    try {
      final response = await apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

}