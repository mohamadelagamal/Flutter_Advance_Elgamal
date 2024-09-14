import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advance_elgamal/core/helpers/spacing.dart';
import 'package:flutter_advance_elgamal/core/theming/colors.dart';
import 'package:flutter_advance_elgamal/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// This is General Text Form Field Widget
class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String)? validator;
  const AppTextFormField(
      {this.contentPadding,
      required this.hintText,
      this.suffixIcon,
      this.obscureText,
       this.hintStyle,
        this.backgroundColor,
      this.style,
       this.focusedBorder,
       this.enabledBorder, this.controller,
        required this.validator});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: ColorsManager.mainBlue,
            width: 1.3,
          ),
        ),
        enabledBorder: enabledBorder ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: ColorsManager.lighterGray,
            width: 1.3,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
        ),
        hintStyle: hintStyle?? TextStyles.font14lightGreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? ColorsManager.moreLightGray,
        filled: true // to fill the background color
      ),
      obscureText: obscureText ?? false,
      style: TextStyles.font14lightGreyRegular,
      validator: (value) {
        // if (value!.isEmpty) {
        //   return 'Please enter $hintText';
        // }
        return validator!(value!);
      },
    );
  }
}
