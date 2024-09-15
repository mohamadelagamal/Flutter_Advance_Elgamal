import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advance_elgamal/core/helpers/spacing.dart';
import 'package:flutter_advance_elgamal/features/login/ui/widget/dont_have_account.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../data/models/login_request_body.dart';
import '../../logic/cubit/login_cubit.dart';
import '../widget/email_and_password.dart';
import '../widget/login_bloc_listener.dart';
import '../widget/terms_and_condition_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Back!', style: TextStyles.font24BlueBold),
              verticalSpace(8),
              Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GreyRegular),
              verticalSpace(36),
              Column(
                children: [
                  const EmailAndPassword(),
                  verticalSpace(24),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text('Forgot Password?', style: TextStyles.font13BlueRegular),
                  ),
                  verticalSpace(40),
                  AppTextButton(
                    buttonText: 'Login',
                    textStyle: TextStyles.font16WhiteSemiBold,
                    onPressed: () {
                      validateThenDoLogin(context);
                    },
                  ),
                  verticalSpace(16),
                  const TermsAndConditionsText(),
                  verticalSpace(60),
                  const DontHaveAccount(),
                  const LoginBlocListener()
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  void validateThenDoLogin(BuildContext context) {
   if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoadingState();
    }

  }
}
