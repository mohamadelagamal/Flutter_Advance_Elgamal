import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advance_elgamal/core/helpers/extensions.dart';
import 'package:flutter_advance_elgamal/core/routing/routes.dart';
import 'package:flutter_advance_elgamal/core/theming/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/colors.dart';
import '../../logic/cubit/login_cubit.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) => current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            // do something when the state is loading
           showDialog(context: context, builder: (context) => const Center(child: CircularProgressIndicator(
             color: ColorsManager.mainBlue,
           )));
          },
          success: (data) {
            // do something when the state is success
            context.pop();// dismiss the dialog
            // go to home screen
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            // do something when the state is error
            setUpErrorDialog(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

void setUpErrorDialog(BuildContext context, String error) {
  context.pop();// dismiss the dialog
  // show error message
  showDialog(context: context, builder: (context){
    return AlertDialog(
      icon: const Icon(Icons.error, color: Colors.red,size: 32,),
      content: Text(error, style: TextStyles.font15DartBlueMedium),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text('Got it', style: TextStyles.font14BlueSemiBold))
      ],
    );
  });
}
