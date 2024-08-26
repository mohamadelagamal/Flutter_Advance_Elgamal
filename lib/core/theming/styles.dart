import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_advance_elgamal/core/theming/colors.dart';
import 'package:flutter_advance_elgamal/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 class TextStyles {

  static TextStyle font24Black700Widget = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.black,
  );
  static TextStyle font32Blue700Widget = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font24Blue700Widget = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font13GreyRegularWidget = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
    color: ColorsManager.gray,
  );
  static TextStyle font16WhiteSemiBold= TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

}