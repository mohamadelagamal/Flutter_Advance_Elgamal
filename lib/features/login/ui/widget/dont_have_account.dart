import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_advance_elgamal/core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        // style: const TextStyle(
        //   fontSize: 16,
        //   color: Colors.grey,
        // ),
        children: [
          TextSpan(text: 'Don\'t have an account? ',style: TextStyles.font13DarkBlueRegular),
          TextSpan(
            text: 'Sign Up',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Navigate to Sign Up Screen
              },
          ),
        ],
      ),
    );
  }
}