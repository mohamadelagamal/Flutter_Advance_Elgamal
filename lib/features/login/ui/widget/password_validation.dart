import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advance_elgamal/core/helpers/spacing.dart';
import 'package:flutter_advance_elgamal/core/theming/styles.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowercase;
  final bool hasUppercase;
  final bool specialCharacter;
  final bool hasMinLength;
  final bool hasNumber;

  const PasswordValidation(
      {super.key,
      required this.hasLowercase,
      required this.hasUppercase,
      required this.specialCharacter,
      required this.hasMinLength,
      required this.hasNumber});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(hasLowercase, 'At least one lowercase letter (a-z)'),
        verticalSpace(2),
        buildValidationRow(hasUppercase, 'At least one uppercase letter (A-Z)'),
        verticalSpace(2),
        buildValidationRow(hasNumber, 'At least one number (0-9)'),
        verticalSpace(2),
        buildValidationRow(specialCharacter, 'At least one special character (!@#\$%^&*)'),
        verticalSpace(2),
        buildValidationRow(hasMinLength, 'Minimum of 8 characters'),

      ],
    );
  }

  Widget buildValidationRow(bool hasLowercase, String text) {
    return Row(
      children: [
        Icon(
          hasLowercase ? Icons.check_circle : Icons.remove_circle,
          color: hasLowercase ? Colors.green : Colors.red,
        ),
        horizontalSpace(6),
        Text(text, style:  TextStyles.font13DarkBlueRegular.copyWith(
          color: hasLowercase ? Colors.green : Colors.red,
        //  decoration: hasLowercase ? TextDecoration.lineThrough : TextDecoration.none,
        //   decorationColor: Colors.green,
        //   decorationThickness: 2,

        )),
      ],
    );
  }
}
