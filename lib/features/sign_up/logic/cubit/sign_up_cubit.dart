import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_advance_elgamal/features/sign_up/data/repository/sign_up_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/sign_up_request_body.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepository signUpRepository;
  SignUpCubit(this.signUpRepository) : super(const SignUpState.initial());
  // create instance of SignUpCubit
  static SignUpCubit get(context) => BlocProvider.of(context);
  /// controller for the form
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  /// emit sign up state
  void emitSignUpState() async{
    emit(const SignUpState.loading());
    final response = await signUpRepository.signUp(SignUpRequestBody(
      name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
      passwordConfirmation: confirmPasswordController.text,
      phone: phoneController.text,
      gender: 0,
    ));
    response.when(
      success: (data) {
        emit(SignUpState.success(data));
      },
      failure: (errorHandler) {
        emit(SignUpState.error(error: errorHandler.apiErrorModel.message ?? ''));
      },
    );
  }

}
