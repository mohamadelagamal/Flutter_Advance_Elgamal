import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_advance_elgamal/features/login/data/models/login_request_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../data/repository/login_repo.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo,) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void emitLoadingState() async{
    emit(const LoginState.loading());
    final response = await loginRepo.login(LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    ));
    response.when( // this is a freezed method where we can check the type of the response and act accordingly
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (errorHandler) {
        emit(LoginState.error(error: errorHandler.apiErrorModel.message ?? ''));
      },
    );

  }
}
