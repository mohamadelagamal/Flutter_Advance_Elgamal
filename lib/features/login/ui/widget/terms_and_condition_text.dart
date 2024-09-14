import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

import '../../../../core/theming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging in, you agree to our ',
            style: TextStyles.font13GreyRegular,
          ),
          TextSpan(
            text: 'Terms of Service',
            style: TextStyles.font13DarkBlueMedium,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Do something
              },
          ),
          TextSpan(
            text: ' and ',
            style: TextStyles.font13GreyRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyles.font13DarkBlueMedium,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Do something
              },
          ),
        ],
      ),
    );
  }
}